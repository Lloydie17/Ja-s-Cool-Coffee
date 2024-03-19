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
    public partial class WebForm2 : System.Web.UI.Page
    {
        //string connectionstring = @"Data Source=(localdb)\Projects;Initial Catalog=JACOOL_DB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False";
        string connectionstring = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\xx620\Documents\Visual Studio 2012\Projects\Ja-s-Cool-Coffee\jacoolcoffee\App_Data\JACOOL_DB.mdf;Integrated Security=True";
        //string connectionstring = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\pc\Documents\Visual Studio 2012\Projects\Ja-s-Cool-Coffee\jacoolcoffee\App_Data\JACOOL_DB.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFranch_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(fname.Text) || string.IsNullOrEmpty(femail.Text) || string.IsNullOrEmpty(fcontact.Text) || string.IsNullOrEmpty(flocation.Text) || string.IsNullOrEmpty(fsize.Text))
            {
                Response.Write("<script>alert('Please fill in the input field!')</script>");
            }
            else
            {
                //Process the added data;
                using (SqlConnection cn = new SqlConnection(connectionstring))
                {
                    string query = "INSERT INTO FRANCHISE (NAME, EMAIL, CONTACT_NUM, LOCATION, SIZE, STATUS) VALUES (@NAME, @EMAIL, @CONTACT_NUM, @LOCATION, @SIZE, @STATUS)";
                    using (SqlCommand cmd = new SqlCommand(query, cn))
                    {
                        cn.Open();

                        int status = 1;
                        cmd.Parameters.AddWithValue("@NAME", fname.Text);
                        cmd.Parameters.AddWithValue("@EMAIL", femail.Text);
                        cmd.Parameters.AddWithValue("@CONTACT_NUM", fcontact.Text);
                        cmd.Parameters.AddWithValue("@LOCATION", flocation.Text);
                        cmd.Parameters.AddWithValue("@SIZE", fsize.Text);
                        cmd.Parameters.AddWithValue("@STATUS", status);
                        cmd.ExecuteNonQuery();
                    }
                }
                fname.Text = "";
                femail.Text = "";
                fcontact.Text = "";
                flocation.Text = "";
                fsize.Text = "";
            }
        }
    }
}