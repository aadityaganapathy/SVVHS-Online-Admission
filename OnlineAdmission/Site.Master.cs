﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAdmission
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Convert.ToString(Cache["News"])))
            {
                Session["URLValue"] = Request.Url.ToString();
                Response.Redirect("UpdateNews.aspx");
            }
            LiteralValue.Text = Convert.ToString(Cache["News"]);
        }
    }
}