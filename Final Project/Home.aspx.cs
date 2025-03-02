﻿using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Final_Project
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubscribeButton_Click(object sender, EventArgs e)
        {
            
            string email = EmailTextBox.Text.Trim();
           

            // Define your connection string (or use the one in Web.config)
            string connectionString = ConfigurationManager.ConnectionStrings["OrderDBConnection"].ConnectionString;

            // Create the SQL query to insert the data into the ContactMessages table
            string query = "INSERT INTO subscribe (Email) VALUES ( @Email)";

            // Using statement for connection and command to ensure proper cleanup
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to prevent SQL injection
                    
                    command.Parameters.AddWithValue("@Email", email);
                    

                    try
                    {
                        // Open the connection and execute the query
                        connection.Open();
                        command.ExecuteNonQuery();

                        // Provide a success message to the user (you can redirect to another page or show a confirmation)
                        Response.Write("<script>alert('Subscription successful! Thank you for subscribing.');</script>");
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
