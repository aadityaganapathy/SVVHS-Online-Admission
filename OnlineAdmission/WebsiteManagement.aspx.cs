using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineAdmission;
using System.Data.SqlClient;
using System.Data;

namespace OnlineAdmission
{
    public partial class WebsiteManagement : System.Web.UI.Page
    {
        #region Properties
        public string UserSession
        {
            get
            {
                string UserSession = "";
                try
                {
                    UserSession = Convert.ToString(Session["User_Session"]);
                }
                catch
                {
                    UserSession = "Invalid";
                }
                return UserSession;
            }
        }
        #endregion Properties

        #region Page Events
        protected void Page_Load(object sender, EventArgs e)
        {
            string ValidUser = UserSession;
            if (ValidUser == "ValidUser")
            {
                this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
                if (!this.IsPostBack)
                {
                    this.BindGrid();
                }
            }
            else
            {
                Response.Redirect("SessionExpired.aspx");
            }

        }
        #endregion Page Events

        #region Custom Methods

        public void DatabaseUpdateAdmissionDate()
        {
            int Count = 0;
            SqlConnection Connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineAdmission"].ConnectionString);
            DataTable dtbl = new DataTable();
            try
            {
                string Query = ("SELECT COUNT(*) FROM ADMISSION_DATES");
                SqlCommand Command = new SqlCommand(Query, Connection);
                Connection.Open();
                dtbl.Load(Command.ExecuteReader());
                Count = Convert.ToInt32(dtbl.Rows[0][0]);
            }
            catch (Exception E)
            {
                Session["ErrorMessage"] = Convert.ToString(E);
                Response.Redirect("ApplicationError.aspx");
            }
            finally
            {
                Connection.Close();
            }
            if (Count < 1)
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = Connection;
                        command.CommandType = CommandType.Text;
                        command.CommandText = "INSERT INTO ADMISSION_DATES (FROM_DATE, TO_DATE) VALUES(@DATEFROM, @DATETO)";
                        command.Parameters.AddWithValue("@DATEFROM", txtDateFrom.Value);
                        command.Parameters.AddWithValue("@DATETO", txtDateTo.Value);
                        Connection.Open();
                        command.ExecuteNonQuery();
                    }
                }
                catch (Exception E)
                {
                    Session["ErrorMessage"] = Convert.ToString(E);
                    Response.Redirect("ApplicationError.aspx");
                }
                finally
                {
                    Connection.Close();
                }
            }
            else
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = Connection;
                        command.CommandType = CommandType.Text;
                        command.CommandText = "UPDATE ADMISSION_DATES SET FROM_DATE = @DATEFROM, TO_DATE = @DATETO";
                        command.Parameters.AddWithValue("@DATEFROM", txtDateFrom.Value);
                        command.Parameters.AddWithValue("@DATETO", txtDateTo.Value);
                        Connection.Open();
                        command.ExecuteNonQuery();
                    }
                }
                catch(Exception E)
                {
                    Session["ErrorMessage"] = Convert.ToString(E);
                    Response.Redirect("ApplicationError.aspx");
                }
                finally
                {
                    Connection.Close();
                }
           }
        }

        private void BindGrid()
        {
            using (OnlineAdmissionNews entities = new OnlineAdmissionNews())
            {
                GridView1.DataSource = from NEWS in entities.NEWS.ToList()
                                       select NEWS;
                GridView1.DataBind();
            }
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int SR_NO = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string DATA = (row.FindControl("txtDATA") as TextBox).Text;
            using (OnlineAdmissionNews entities = new OnlineAdmissionNews())
            {
                NEWS news = (from c in entities.NEWS
                                     where c.SR_NO == SR_NO
                                     select c).FirstOrDefault();
                news.DATA =DATA;
                entities.SaveChanges();
            }
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int SR_NO = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                using (OnlineAdmissionNews entities = new OnlineAdmissionNews())
                {
                    NEWS news = (from c in entities.NEWS
                                 where c.SR_NO == SR_NO
                                 select c).FirstOrDefault();
                    if (news != null)
                    {
                        entities.NEWS.Remove(news);
                        entities.SaveChanges();
                    }
                }
                this.BindGrid();         
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[1].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }
        #endregion Custom Methods

        #region Page Control
        protected void Logout_Click(object sender, EventArgs e)
        {
            this.Logout.Enabled = false;
           Session["URLValue"] = "HomePage.aspx";
            Session["User_Session"] = Convert.ToString("Invalid");
            Response.Redirect("UpdateNews.aspx");
        }

        protected void Insert(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Convert.ToString(txtNewDATA.Text)))
            {
                using (OnlineAdmissionNews entities = new OnlineAdmissionNews())
                {
                    NEWS news = (from c in entities.NEWS
                                 where c.DATA == txtNewDATA.Text
                                 select c).FirstOrDefault();
                    if (news == null)
                    {
                        NEWS Insert = new NEWS
                        {
                           DATA = txtNewDATA.Text
                        };
                        entities.NEWS.Add(Insert);
                        entities.SaveChanges();
                    }
                    txtNewDATA.Text = string.Empty;
                }
                this.BindGrid();
            }
        }
        #endregion Page Control

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtDateTo.Value) && !string.IsNullOrEmpty(txtDateFrom.Value))
            {
                DatabaseUpdateAdmissionDate();
            }
            else
            {
                lblError.Text = "Please Select From and To date.";
            }
        }
    }
}