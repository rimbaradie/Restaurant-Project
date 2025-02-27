using System;
using System.Data.SqlClient;
using System.Configuration;

namespace Final_Project
{
    public partial class ClaimOrders : System.Web.UI.Page
    {
        // Define the TextBox controls for name, email, and phone in your ASPX page
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This method is triggered when the form is submitted
        protected void SubmitForm(object sender, EventArgs e)
        {
            Response.Write("Form Submitted<br/>");
            // Access the controls by their ID using FindControl
            string name = NameTextBox.Text;
            string email = EmailTextBox.Text;
            string phone = PhoneTextBox.Text;

            // Connection string to the SQL Server database
            string connectionString = ConfigurationManager.ConnectionStrings["OrderDBConnection"].ConnectionString;

            // SQL query to insert the data
            string query = "INSERT INTO UserClaims (Name, Email, Phone) VALUES (@Name, @Email, @Phone)";

            // Using SQL connection to insert the data
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Phone", phone);

                try
                {
                    // Open the connection and execute the query
                    conn.Open();
                    cmd.ExecuteNonQuery();

                    // Inform the user of the success
                    Response.Write("<script>alert('Claim successfully submitted!');</script>");
                }
                catch (Exception ex)
                {
                    // Handle any exceptions that occur during the database operation
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
        }
    }
}
