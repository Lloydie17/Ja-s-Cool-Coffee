using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace jacoolcoffee
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
            }
        }

        protected void logout(object sender, EventArgs e)
        {
            // Clear session and sign out
            Session.Clear();
            Session.Abandon();
            FormsAuthentication.SignOut();

            // Redirect to the login page
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }
    }
}