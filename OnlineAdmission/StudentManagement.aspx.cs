using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace OnlineAdmission
{
    public partial class StudentManagement : System.Web.UI.Page
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

        public string APPLICATION_ID
        {
            get
            {
                string APPLICATION_ID = "";
                if (!string.IsNullOrEmpty(txtApplicationID.Text))
                {
                    APPLICATION_ID = txtApplicationID.Text;
                    APPLICATION_ID = "APPLICATION_ID = '" + APPLICATION_ID + "'";
                }
                return APPLICATION_ID;
            }
        }

        public string Name
        {
            get
            {
                string Name = "";
                if (!string.IsNullOrEmpty(txtName.Text))
                {
                    Name = txtName.Text;
                    Name = "FIRST_NAME = '" + Name + "'";
                }
                return Name;
            }
        }
        public string Surname
        {
            get
            {
                string Surname = "";
                if (!string.IsNullOrEmpty(txtSurname.Text))
                {
                    Surname = txtSurname.Text;
                    Surname = "SURNAME = '" + Surname + "'";
                }
                return Surname;
            }
        }
        public string Gender
        {
            get
            {
                string Gender = "";
                if (!string.IsNullOrEmpty(ddlGender.Text))
                {
                    Gender = ddlGender.Text;
                    Gender = "GENDER = '" + Gender + "'";
                }
                return Gender;
            }
        }
        public string Area_Value
        {
            get
            {
                string Areas = "";
                int SelectedCount = valArea.Items.Cast<ListItem>().Count(li => li.Selected);                
                if (SelectedCount > 0)
                {
                    foreach (ListItem items in valArea.Items)
                    {
                        if (items.Selected)
                        {
                            Areas = Areas + "'" + items.Value + "'" + ", ";
                        }
                    }
                    Areas = Areas.Remove(Areas.Length - 2);
                    Areas = "AREA IN " + "(" + Areas + ")";
                }
                return Areas;
            }
        }
        public string Date_Of_Birth
        {
            get
            {
                string DOB = "";
                string DOBFrom = "";
                string DOBTo = "";
                if (!string.IsNullOrEmpty(txtDateFrom.Text) && !string.IsNullOrEmpty(txtDateTo.Text))
                {
                    DOBFrom = txtDateFrom.Text;
                    DOBTo = txtDateTo.Text;
                    DOB = "DATE_OF_BIRTH BETWEEN '" + DOBFrom + "' AND '" + DOBTo + "'";
                }
                if (!string.IsNullOrEmpty(txtDateFrom.Text) && string.IsNullOrEmpty(txtDateTo.Text))
                {
                    DOBFrom = txtDateFrom.Text;
                    DOB = "DATE_OF_BIRTH > '" + DOBFrom + "'";
                }
                if (string.IsNullOrEmpty(txtDateFrom.Text) && !string.IsNullOrEmpty(txtDateTo.Text))
                {
                    DOBTo = txtDateTo.Text;
                    DOB = "DATE_OF_BIRTH < '" + DOBTo + "'";
                }
                return DOB;
            }
        }
        public string Query { get; set; }
        public DataTable SearchResult { get; set; }
        public DataTable ExportDataTable { get; set; }
        public List<string> SelectedStudent { get; set; }
        public string ExportQuery
        {
            get
            {
                string Query = "";
                string TempQuery = "SELECT * FROM STUDENT_DETAILS WITH(NOLOCK) WHERE APPLICATION_ID IN (";
                if (SelectedStudent.Count > 0)
                {
                    foreach (string item in SelectedStudent)
                    {
                        TempQuery = TempQuery + "'" + item + "', ";
                    }
                    TempQuery = TempQuery.Remove(TempQuery.Length - 2);
                    TempQuery = TempQuery + ")";
                    Query = TempQuery;
                }
                return Query;
            }
        }


        #endregion Properties

        #region Page Events
        protected void Page_Load(object sender, EventArgs e)
        {
            string ValidUser = UserSession;
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (ValidUser != "ValidUser")
            {
                Response.Redirect("SessionExpired.aspx");
            }
            lblError.Text = "";
        }
        #endregion Page Events

        #region Page Controls

        protected void Search_Click(object sender, EventArgs e)
        {
            QueryBuilder();
            SearchDB();
            SearchResultTable.DataSource = SearchResult;
            SearchResultTable.DataBind();
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            txtApplicationID.Text = "";
            txtName.Text = "";
            txtSurname.Text = "";
            txtDateFrom.Text = "";
            txtDateTo.Text = "";
            ddlGender.Text = "";
            valArea.ClearSelection();
            lblError.Text = "";
            SearchResultTable.DataSource = SearchResult;
            SearchResultTable.DataBind();
        }

        protected void Export_Click(object sender, EventArgs e)
        {
            LoadValueForSelectedStudent();
            if (SelectedStudent.Count > 0)
            {
                LoadExportDataTable();
                ExportToExcel();
                lblError.Text = "";

            }
            else
            {
                lblError.Text = "Please Select Rows to be Exported";
            }
        }

        protected void Open_Click(object sender, EventArgs e)
        {
            LoadValueForSelectedStudent();
            if (SelectedStudent.Count == 1)
            {
                foreach(string SelectedRecord in SelectedStudent)
                {
                    Session["Student_ID_Session"] = Convert.ToString(SelectedRecord);
                    HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>window.open('Confirmation.aspx', '_new');</SCRIPT>");
                }
            }
            else
            {
                lblError.Text = "Please select one record that has to be opened";
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            this.Logout.Enabled = false;
            Session["User_Session"] = Convert.ToString("Invalid");
            Response.Redirect("HomePage.aspx");
        }


        #endregion Page Controls

        #region Custom Methods

        public void QueryBuilder()
        {
            string FinalQuery = "SELECT ROW_NUMBER() OVER(ORDER BY APPLICATION_ID) as 'SR NO', APPLICATION_ID AS 'APPLICATION ID', FIRST_NAME, SURNAME, GENDER, DATE_OF_BIRTH AS 'DATE OF BIRTH', AREA, FATHERS_MOBILE_NUMBER AS 'MOBILE NUMBER' FROM STUDENT_DETAILS WITH(NOLOCK) ";
            string ApplicationID = APPLICATION_ID;
            string StudentName = Name;
            string StudentSurname = Surname;
            string StudentGender = Gender;
            string AreaValue = Area_Value;
            string DateOfBirth = Date_Of_Birth;


            if (!string.IsNullOrEmpty(ApplicationID) ||
                !string.IsNullOrEmpty(StudentName) ||
                !string.IsNullOrEmpty(StudentSurname) ||
                !string.IsNullOrEmpty(StudentGender) ||
                !string.IsNullOrEmpty(AreaValue) ||
                !string.IsNullOrEmpty(DateOfBirth))
            {
                FinalQuery = FinalQuery + " WHERE ";

                if (!string.IsNullOrEmpty(ApplicationID))
                {
                    FinalQuery = FinalQuery + ApplicationID;
                }

                if (!string.IsNullOrEmpty(StudentName))
                {
                    if (!string.IsNullOrEmpty(ApplicationID))
                    {
                        FinalQuery = FinalQuery + " AND " + StudentName;
                    }
                    else
                    {
                        FinalQuery = FinalQuery + StudentName;
                    }
                }

                if (!string.IsNullOrEmpty(StudentSurname))
                {
                    if (!string.IsNullOrEmpty(ApplicationID) ||
                        !string.IsNullOrEmpty(StudentName))
                    {
                        FinalQuery = FinalQuery + " AND " + StudentSurname;
                    }
                    else
                    {
                        FinalQuery = FinalQuery + StudentSurname;
                    }
                }
                if (!string.IsNullOrEmpty(StudentGender)) 
                {
                    if (!string.IsNullOrEmpty(ApplicationID) ||
                        !string.IsNullOrEmpty(StudentName) ||
                        !string.IsNullOrEmpty(StudentSurname))
                    {
                        FinalQuery = FinalQuery + " AND " + StudentGender;
                    }
                    else
                    {
                        FinalQuery = FinalQuery + StudentGender;
                    }
                }
                if (!string.IsNullOrEmpty(AreaValue))
                {
                    if (!string.IsNullOrEmpty(ApplicationID) ||
                        !string.IsNullOrEmpty(StudentName) ||
                        !string.IsNullOrEmpty(StudentSurname) ||
                        !string.IsNullOrEmpty(StudentGender))
                    {
                        FinalQuery = FinalQuery + " AND " + AreaValue;
                    }
                    else
                    {
                        FinalQuery = FinalQuery + AreaValue;
                    }
                }

                if (!string.IsNullOrEmpty(DateOfBirth))
                {
                    if (!string.IsNullOrEmpty(ApplicationID) ||
                        !string.IsNullOrEmpty(StudentName) ||
                        !string.IsNullOrEmpty(StudentSurname) ||
                        !string.IsNullOrEmpty(StudentGender) ||
                        !string.IsNullOrEmpty(AreaValue))
                    {
                        FinalQuery = FinalQuery + " AND " + DateOfBirth;
                    }
                    else
                    {
                        FinalQuery = FinalQuery + DateOfBirth;
                    }
                }
            }
            Query = FinalQuery;
        }

        public void SearchDB()
        {
            SqlConnection Connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineAdmission"].ConnectionString);
            try
            {
                SearchResult = new DataTable();
                SqlCommand Command = new SqlCommand(Query, Connection);
                Connection.Open();
                SearchResult.Load(Command.ExecuteReader());
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

        public void LoadValueForSelectedStudent()
        {
            SelectedStudent = new List<string>();
            foreach (DataGridItem D in SearchResultTable.Items)
            {
                HtmlInputCheckBox chkBx = D.Cells[1].FindControl("CheckIndividual") as HtmlInputCheckBox;
                if (chkBx.Checked == true)
                {
                    Label lbl = (Label)D.FindControl("StudentID");
                    SelectedStudent.Add(lbl.Text);
                }
            }

        }

        public void LoadExportDataTable()
        {
            ExportDataTable = new DataTable();
            SqlConnection Connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineAdmission"].ConnectionString);
            try
            {
                SearchResult = new DataTable();
                SqlCommand Command = new SqlCommand(ExportQuery, Connection);
                Connection.Open();
                ExportDataTable.Load(Command.ExecuteReader());
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

        public void ExportToExcel()
        {
            string FileName = "attachment; filename=" + "Export_" + DateTime.Now + ".xls";
            Response.Clear();
            Response.ClearHeaders();
            Response.ClearContent();
            Response.ContentType = "application/octet-stream";
            Response.AddHeader("Content-Disposition", FileName);
            GridView excel = new GridView();
            excel.DataSource = ExportDataTable;
            excel.DataBind();
            excel.RenderControl(new HtmlTextWriter(Response.Output));
            Response.Flush();
            Response.End();
        }

        #endregion Custom Methods
    }
}