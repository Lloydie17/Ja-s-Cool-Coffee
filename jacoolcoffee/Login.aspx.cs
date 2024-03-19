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
    public partial class Login : System.Web.UI.Page
    {
        //string connectionstring = @"Data Source=(localdb)\Projects;Initial Catalog=JACOOL_DB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False";
        string connectionstring = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\xx620\Documents\Visual Studio 2012\Projects\Ja-s-Cool-Coffee\jacoolcoffee\App_Data\JACOOL_DB.mdf;Integrated Security=True";
        //string connectionstring = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\pc\Documents\Visual Studio 2012\Projects\Ja-s-Cool-Coffee\jacoolcoffee\App_Data\JACOOL_DB.mdf;Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = logemail.Text;
            string password = logpass.Text;

            // process login
            using (SqlConnection cn = new SqlConnection(connectionstring))
            {
                cn.Open();

                string query = "SELECT USEREMAIL, PASSWORD FROM USERS WHERE USEREMAIL = @USEREMAIL AND PASSWORD = @PASSWORD";
                using (SqlCommand customerCmd = new SqlCommand(query, cn))
                {
                    customerCmd.Parameters.AddWithValue("@USEREMAIL", email);
                    customerCmd.Parameters.AddWithValue("@PASSWORD", password);

                    SqlDataAdapter customerSda = new SqlDataAdapter(customerCmd);
                    DataTable customerDt = new DataTable();
                    customerSda.Fill(customerDt);

                    if (customerDt.Rows.Count > 0)
                    {
                        // Login successful
                        Session["User"] = email;
                        Response.Redirect("Menu.aspx");
                    }
                }
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(regname.Text) || string.IsNullOrEmpty(regemail.Text) || string.IsNullOrEmpty(regpass.Text))
            {
                // Display error message if the input is empty
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill in the input field!')", true);
                Response.Write("<script>alert('Please fill in the input field!')</script>");
            }
            else
            {
                //Process the added data;
                using (SqlConnection cn = new SqlConnection(connectionstring))
                {
                    string query = "INSERT INTO USERS (FULLNAME, USEREMAIL, PASSWORD) VALUES (@FULLNAME, @USEREMAIL, @PASSWORD)";
                    using (SqlCommand cmd = new SqlCommand(query, cn))
                    {
                        cn.Open();
                        cmd.Parameters.AddWithValue("@FULLNAME", regname.Text);
                        cmd.Parameters.AddWithValue("@USEREMAIL", regemail.Text);
                        cmd.Parameters.AddWithValue("@PASSWORD", regpass.Text);
                        cmd.ExecuteNonQuery();
                    }
                }
            }

            regname.Text = "";
            regemail.Text = "";
            regpass.Text = "";
        }
    }
}