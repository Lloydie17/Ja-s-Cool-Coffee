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
    public partial class WebForm3 : System.Web.UI.Page
    {
        //string connectionstring = @"Data Source=(localdb)\Projects;Initial Catalog=JACOOL_DB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False";
        //string connectionstring = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\xx620\Documents\Visual Studio 2012\Projects\Ja-s-Cool-Coffee\jacoolcoffee\App_Data\JACOOL_DB.mdf;Integrated Security=True";
        string connectionstring = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\pc\Documents\Visual Studio 2012\Projects\Ja-s-Cool-Coffee\jacoolcoffee\App_Data\JACOOL_DB.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
            }
        }

        protected void btnFback_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(fback.Text))
            {
                Response.Write("<script>alert('Please fill in the input field!')</script>");
            }
            else
            {
                //Process the added data;
                using (SqlConnection cn = new SqlConnection(connectionstring))
                {
                    string query = "INSERT INTO FEEDBACK (NAME, FBACKCOMMENT, FBACKRATE) VALUES (@NAME, @FBACKCOMMENT, @FBACKRATE)";
                    using (SqlCommand cmd = new SqlCommand(query, cn))
                    {
                        cn.Open();

                        string name = string.IsNullOrWhiteSpace(fbackName.Text) ? "Anonymous" : fbackName.Text;
                        string rating = fbackrate.SelectedValue;
                        cmd.Parameters.AddWithValue("@NAME", name);
                        cmd.Parameters.AddWithValue("@FBACKCOMMENT", fback.Text);
                        cmd.Parameters.AddWithValue("@FBACKRATE", rating);
                        cmd.ExecuteNonQuery();
                    }
                }

                GridView1.DataBind();

                fbackName.Text = "";
                fback.Text = "";
            }
        }


    }
}