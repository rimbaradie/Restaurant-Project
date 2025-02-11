
using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Final_Project
{
    public partial class Location : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            // Get data from the form fields
            string name = txtName.Text;
            string email = txtEmail.Text;
            string message = txtMessage.Text;

            // Connection string for SQL Server (adjust as necessary)
            string connectionString = ConfigurationManager.ConnectionStrings["OrderDBConnection"].ConnectionString;

            // SQL query to insert data into the contact table
            string query = "INSERT INTO CM (Name, Email, Message) VALUES (@Name, @Email, @Message)";

            // Create and open connection
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                // Create command and parameters
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Message", message);

                    // Execute the query
                    cmd.ExecuteNonQuery();
                }
            }

            // Optionally, clear the fields or show a success message
            txtName.Text = "";
            txtEmail.Text = "";
            txtMessage.Text = "";

            // Optionally, display a success message
            Response.Write("<script>alert('Message sent successfully!');</script>");
        }
    }
}
