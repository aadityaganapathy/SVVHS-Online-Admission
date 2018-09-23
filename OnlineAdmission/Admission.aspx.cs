using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;

namespace OnlineAdmission
{
    public partial class AdmissionMainPage : System.Web.UI.Page
    {
        string FormMode {
            get
            {
                string FormMode="";
                SqlConnection Connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineAdmission"].ConnectionString);
                DataTable dtbl = new DataTable();
                try
                {
                    string Query = ("IF @DATE BETWEEN (SELECT TOP(1) FROM_DATE FROM ADMISSION_DATES) AND (SELECT TOP(1) TO_DATE FROM ADMISSION_DATES) BEGIN SELECT 'TRUE' END ELSE IF @DATE NOT BETWEEN (SELECT TOP(1) FROM_DATE FROM ADMISSION_DATES) AND (SELECT TOP(1) TO_DATE FROM ADMISSION_DATES) BEGIN SELECT 'FALSE' END");
                    SqlCommand Command = new SqlCommand(Query, Connection);
                    Command.Parameters.Add(new SqlParameter("@DATE", DateTime.Now));
                    Connection.Open();
                    dtbl.Load(Command.ExecuteReader());
                    FormMode = (dtbl.Rows[0][0].ToString());
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
                return FormMode;
            }
                        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NewForm_Click(object sender, EventArgs e)
        {

            Session["FormMode"] = Convert.ToString(FormMode);
            Response.Redirect("NewForm.aspx");
        }

        protected void EditForm_Click(object sender, EventArgs e)
        {
            Session["FormMode"] = Convert.ToString(FormMode);
            Response.Redirect("EditDetails.aspx");
        }
    }
}