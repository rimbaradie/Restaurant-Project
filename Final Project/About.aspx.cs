using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using static System.Net.Mime.MediaTypeNames;
using System.Web.UI.WebControls;

namespace Final_Project
{
    public partial class About : Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["OrderDBConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            // You can hide the feedback label initially
            feedbackLabel.Visible = false;
        }

        protected void SubmitReview(object sender, EventArgs e)
        {
            // Retrieve user input
            int rating = int.Parse(ratingDropdown.SelectedValue);
            string reviewText = reviewTextBox.Text.Trim();

          

            // SQL query to insert review data into the database
            string query = "INSERT INTO Review (Rating, Comment) VALUES (@Rating, @Comment)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Rating", rating);
                command.Parameters.AddWithValue("@Comment", reviewText);

                try
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                    feedbackLabel.Text = "Thank you for your feedback!";
                    feedbackLabel.Visible = true;

                    // Optionally clear the form after submission
                    reviewTextBox.Text = "";
                    ratingDropdown.SelectedIndex = 0;
                }
                catch (Exception ex)
                {
                    feedbackLabel.Text = "An error occurred while submitting your review. Please try again.";
                    feedbackLabel.ForeColor = System.Drawing.Color.Red;
                    feedbackLabel.Visible = true;

                    // Log the exception message to a file or display it for debugging
                    Console.WriteLine(ex.Message); // This will print the error to the console (use for debugging).
                    feedbackLabel.Text += "<br/>Error: " + ex.Message;
                }

            }
        }
        
      
       

      




        


    }
}
