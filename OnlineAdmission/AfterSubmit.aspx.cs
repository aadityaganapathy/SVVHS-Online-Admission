using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAdmission
{
    public partial class AfterSubmit : System.Web.UI.Page
    {
        #region Page Events
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(this.IsPostBack) && Convert.ToString(Session["AfterSubmit"]) != "X")
            {
                Session["FormMode"] = Convert.ToString("X");
                if (Convert.ToString(Session["AfterSubmit"]) != "X")
                {
                    lblApplicatonID.InnerText = "Your Application ID is " + Convert.ToString(Session["AfterSubmit"]);
                }
                Session["AfterSubmit"] = Convert.ToString("X");
            }
            else
            {
                Response.Redirect("SessionExpired.aspx");
            }
        }
        #endregion Page Events
    }
}