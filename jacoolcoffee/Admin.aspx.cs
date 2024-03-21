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
        //string connectionstring = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\xx620\Documents\Visual Studio 2012\Projects\Ja-s-Cool-Coffee\jacoolcoffee\App_Data\JACOOL_DB.mdf;Integrated Security=True";
        string connectionstring = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\pc\Documents\Visual Studio 2012\Projects\Ja-s-Cool-Coffee\jacoolcoffee\App_Data\JACOOL_DB.mdf;Integrated Security=True";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Session.Clear();
                Session.Abandon();
                FormsAuthentication.SignOut();
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!IsPostBack) { }
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

        protected void btnGet_Click(object sender, EventArgs e)
        {
            string id = getId.Text;

            // process login
            using (SqlConnection cn = new SqlConnection(connectionstring))
            {
                string query = "SELECT NAME, EMAIL, CONTACT_NUM, LOCATION, SIZE, STATUS FROM FRANCHISE WHERE ID = @ID";
                using (SqlCommand cmd = new SqlCommand(query, cn))
                {
                    cmd.Parameters.AddWithValue("@ID", id);

                    cn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
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
                            dataname.Text = name;
                            dataemail.Text = email;
                            datacontactnum.Text = contactNumber;
                            datalocation.Text = location;
                            datasize.Text = size;
                            StatusList.SelectedValue = status;
                        }
                    }
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection(connectionstring))
            {
                string query = "UPDATE FRANCHISE SET STATUS = @STATUS WHERE ID = @ID";
                using (SqlCommand cmd = new SqlCommand(query, cn))
                {
                    cn.Open();
                    cmd.Parameters.AddWithValue("@STATUS", StatusList.SelectedValue);
                    cmd.Parameters.AddWithValue("@ID", getId.Text);
                    cmd.ExecuteNonQuery();
                }
            }

            GridView1.DataBind();
        }

        protected string GetStatusText(object status)
        {
            if (status != null)
            {
                int statusValue;
                if (int.TryParse(status.ToString(), out statusValue))
                {
                    switch (statusValue)
                    {
                        case 1:
                            return "Pending";
                        case 2:
                            return "Processing";
                        case 3:
                            return "Settled";
                        default:
                            return "Unknown";
                    }
                }
            }
            return string.Empty;
        }

    }
}