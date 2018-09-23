using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAdmission
{
    public partial class EditDetails : System.Web.UI.Page
    {
        #region Page Events
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["FormMode"]) != "TRUE")
            {
                Response.Redirect("SessionExpired.aspx");
            }
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }
        #endregion Page Events

        #region Page Controls
        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection Connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineAdmission"].ConnectionString);
            int validate = 0;
            try
            {
                string Query = ("SELECT COUNT(*) FROM STUDENT_DETAILS WITH(NOLOCK) WHERE APPLICATION_ID = @STUDENT_ID AND FATHERS_MOBILE_NUMBER = @TELEPHONE_M");
                SqlCommand Command = new SqlCommand(Query, Connection);
                Command.Parameters.Add(new SqlParameter("@STUDENT_ID", txtDetailsApplicationID.Value));
                Command.Parameters.Add(new SqlParameter("@TELEPHONE_M", txtRegisterdMobile.Value));
                Connection.Open();
                validate = Convert.ToInt32(Command.ExecuteScalar());
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
            if(validate == 1)
            {
                Session["Student_ID_Edit_Session"] = Convert.ToString(txtDetailsApplicationID.Value);
                Response.Redirect("EditForm.aspx");
            }
            else
            {
                lblError.Text = "Please Enter Valid Details";
            }
            
        }

        protected void Print_Click(object sender, EventArgs e)
        {
            SqlConnection Connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineAdmission"].ConnectionString);
            int validate = 0;
            try
            {
                string Query = ("SELECT COUNT(*) FROM STUDENT_DETAILS WITH(NOLOCK) WHERE APPLICATION_ID = @STUDENT_ID AND FATHERS_MOBILE_NUMBER = @TELEPHONE_M");
                SqlCommand Command = new SqlCommand(Query, Connection);
                Command.Parameters.Add(new SqlParameter("@STUDENT_ID", txtDetailsApplicationID.Value));
                Command.Parameters.Add(new SqlParameter("@TELEPHONE_M", txtRegisterdMobile.Value));
                Connection.Open();
                validate = Convert.ToInt32(Command.ExecuteScalar());
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
            if (validate == 1)
            {
                Session["Student_ID_Session"] = Convert.ToString(txtDetailsApplicationID.Value);
                Response.Redirect("Confirmation.aspx");
                //HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>window.open('Confirmation.aspx', '_new');</SCRIPT>");
            }
            else
            {
                lblError.Text = "Please Enter Valid Details";
            }

        }
        #endregion Page Controls
    }
}