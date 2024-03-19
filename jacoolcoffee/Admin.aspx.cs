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
    public partial class WebForm4 : System.Web.UI.Page
    {
        //string connectionstring = @"Data Source=(localdb)\Projects;Initial Catalog=JACOOL_DB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False";
        string connectionstring = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\xx620\Documents\Visual Studio 2012\Projects\Ja-s-Cool-Coffee\jacoolcoffee\App_Data\JACOOL_DB.mdf;Integrated Security=True";
        //string connectionstring = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\pc\Documents\Visual Studio 2012\Projects\Ja-s-Cool-Coffee\jacoolcoffee\App_Data\JACOOL_DB.mdf;Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGet_Click(object sender, EventArgs e)
        {
            string id = getId.Text;

            // process login
            using (SqlConnection cn = new SqlConnection(connectionstring))
            {
                string query = "SELECT NAME, EMAIL, CONTACT_NUM, LOCATION, SIZE, STATUS FROM FRANCHISE WHERE ID = @ID";
                using (SqlCommand customerCmd = new SqlCommand(query, cn))
                {
                    customerCmd.Parameters.AddWithValue("@ID", id);

                    cn.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        // Check if there are rows
                        if (reader.Read())
                        {
                            // Get data from the reader
                            string name = reader["name"].ToString();
                            string email = reader["email"].ToString();
                            string contactNumber = reader["contact_num"].ToString();
                            string location = reader["location"].ToString();
                            string size = reader["size"].ToString();
                            string status = reader["status"].ToString();

                            // Set textbox values with fetched data
                            TextBox1.Text = name;
                            TextBox2.Text = email;
                            TextBox3.Text = contactNumber;
                            TextBox4.Text = location;
                            TextBox5.Text = size;
                            DropDownList1.SelectedValue = status;
                        }
                    }
                }
            }
        }
    }
}