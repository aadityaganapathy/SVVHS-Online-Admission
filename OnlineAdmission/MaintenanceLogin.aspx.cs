using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAdmission
{
    public partial class MaintenanceLogin : System.Web.UI.Page
    {
        #region Page Events
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }
        # endregion Page Events

        #region Page Controls
        protected void SM_Click(object sender, EventArgs e)
        {
            SqlConnection Connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineAdmission"].ConnectionString);
            int validate = 0;
            try
            {
                string Query = ("SELECT COUNT(*) FROM USERS WITH(NOLOCK) WHERE USERNAME = @USERNAME AND PASSWORD = @PASSWORD");
                SqlCommand Command = new SqlCommand(Query, Connection);
                Command.Parameters.Add(new SqlParameter("@USERNAME", txtUsername.Value));
                Command.Parameters.Add(new SqlParameter("@PASSWORD", txtPassword.Value));
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
                Session["User_Session"] = Convert.ToString("ValidUser");
                Response.Redirect("StudentManagement.aspx");
            }
            else
            {
                lblError.Text = "Please Enter Valid Details";
            }

        }
        protected void WM_Click(object sender, EventArgs e)
        {
            SqlConnection Connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineAdmission"].ConnectionString);
            int validate = 0;
            try
            {
                string Query = ("SELECT COUNT(*) FROM USERS WITH(NOLOCK) WHERE USERNAME = @USERNAME AND PASSWORD = @PASSWORD");
                SqlCommand Command = new SqlCommand(Query, Connection);
                Command.Parameters.Add(new SqlParameter("@USERNAME", txtUsername.Value));
                Command.Parameters.Add(new SqlParameter("@PASSWORD", txtPassword.Value));
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
                Session["User_Session"] = Convert.ToString("ValidUser");
                Response.Redirect("WebsiteManagement.aspx");
            }
            else
            {
                lblError.Text = "Please Enter Valid Details";
            }

        }
        #endregion Page Controls
    }
}