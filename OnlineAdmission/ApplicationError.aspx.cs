using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAdmission
{
    public partial class ApplicationError : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["ErrorMessage"]) != "Invalid")
            {
                lblErrorMessage.InnerText = Convert.ToString(Session["ErrorMessage"]);
                Session["ErrorMessage"] = Convert.ToString("Invalid");
            }
            else
            {
                Response.Redirect("SessionExpired.aspx");
            }
        }
    }
}