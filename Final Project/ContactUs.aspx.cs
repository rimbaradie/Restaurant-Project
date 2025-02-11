using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Final_Project
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            // Get the data from the form
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string subject = txtSubject.Text.Trim();
            string message = txtMessage.Text.Trim();

            // Define your connection string (or use the one in Web.config)
            string connectionString = ConfigurationManager.ConnectionStrings["OrderDBConnection"].ConnectionString; 

            // Create the SQL query to insert the data into the ContactMessages table
            string query = "INSERT INTO ContactMessages (Name, Email, Subject, Message) VALUES (@Name, @Email, @Subject, @Message)";

            // Using statement for connection and command to ensure proper cleanup
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to prevent SQL injection
                    command.Parameters.AddWithValue("@Name", name);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Subject", subject);
                    command.Parameters.AddWithValue("@Message", message);

                    try
                    {
                        // Open the connection and execute the query
                        connection.Open();
                        command.ExecuteNonQuery();
                        
                        // Provide a success message to the user (you can redirect to another page or show a confirmation)
                        Response.Write("<script>alert('Message submitted successfully!');</script>");
                    }
                    catch (Exception ex)
                    {
                        // Log the error (you might want to show a user-friendly message instead)
                        Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                    }
                    finally
                    {
                        // Ensure the connection is closed
                        connection.Close();
                    }
                }
            }
        }
    }
}
