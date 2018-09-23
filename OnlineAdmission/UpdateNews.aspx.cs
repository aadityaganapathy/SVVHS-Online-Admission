using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineAdmission
{
    public partial class UpdateNews : System.Web.UI.Page
    {
       
    #region Properties
        public string NewsValue { get; set; }    
    #endregion Properties

    #region Page Events
    protected void Page_Load(object sender, EventArgs e)
    {
        string FromPage = Convert.ToString(Session["URLValue"]);
            SetNewsValue();
            Cache.Insert("News", NewsValue);
            if (!string.IsNullOrEmpty(FromPage))
            {
                Response.Redirect(FromPage);
            }
            else
            {
                Response.Redirect("HomePage.aspx");
            }
        }
        #endregion Page Events

    #region Custom Methods
        public void SetNewsValue()
        {
            string News = "";
            SqlConnection Connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineAdmission"].ConnectionString);
            DataTable dtbl = new DataTable();
            try
            {
                string Query = ("SELECT * FROM NEWS ORDER BY SR_NO DESC");
                SqlCommand Command = new SqlCommand(Query, Connection);
                Connection.Open();
                dtbl.Load(Command.ExecuteReader());
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

            int dtblcount = dtbl.Rows.Count;

            for (int i = 0; i < dtblcount; i++)
            {
                News = News + Convert.ToString(dtbl.Rows[i]["DATA"]) + "<br /><br />";
            }

            NewsValue = Convert.ToString(News);
        }
    #endregion Custom Methods

    }
}