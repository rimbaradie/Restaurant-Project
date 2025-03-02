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
          Label1.Visible = false;
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

        protected void LikeButton_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            string imageName = clickedButton.CommandArgument;

            // Get the current like count from the database
            int currentLikes = GetLikeCount(imageName);

            // Increment the like count by 1
            int newLikes = currentLikes + 1;

            // Update the like count in the database
            UpdateLikeCount(imageName, newLikes);

            // Update the label text on the page
            if (imageName == "diningarea")
            {
                likesCount1.Text = newLikes + " Likes";
            }
            else if (imageName == "plating")
            {
                likesCount2.Text = newLikes + " Likes";
            }

           Label1.Text = "Thank you for liking!";
            Label1.Visible = true;
        }

        protected void SubmitComment_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            string imageName = clickedButton.CommandArgument;
            string userComment = string.Empty;

            // Check which textarea corresponds to the image
            if (imageName == "diningarea")
            {
                userComment = txtCommentdiningarea.Value.Trim(); // Use 'Value' instead of 'Text'
            }
            else if (imageName == "plating")
            {
                userComment = txtCommentplating.Value.Trim(); // Use 'Value' instead of 'Text'
            }

            // Check if the comment is not empty
            if (!string.IsNullOrEmpty(userComment))
            {
                InsertComment(imageName, userComment);

               Label1.Text = "Thank you for your comment!";
                Label1.Visible = true;

                // Optionally, clear the comment box after submission
                if (imageName == "diningarea")
                {
                    txtCommentdiningarea.Value = ""; // Clear the textarea using 'Value'
                }
                else if (imageName == "plating")
                {
                    txtCommentplating.Value = ""; // Clear the textarea using 'Value'
                }
            }
            else
            {
                Label1.Text = "Please enter a comment before submitting.";
               Label1.Visible = true;
            }
        }

        private int GetLikeCount(string imageName)
        {
            int likeCount = 0;
            string query = "SELECT LikeCount FROM GalleryComment WHERE ImageName = @ImageName";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@ImageName", imageName);

                connection.Open();
                object result = command.ExecuteScalar();

                if (result != DBNull.Value)
                {
                    likeCount = Convert.ToInt32(result);
                }
            }

            return likeCount;
        }
        private void UpdateLikeCount(string imageName, int newLikeCount)
        {
            string query = "UPDATE GalleryComment SET LikeCount = @LikeCount WHERE ImageName = @ImageName";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@LikeCount", newLikeCount);
                command.Parameters.AddWithValue("@ImageName", imageName);

                connection.Open();
                command.ExecuteNonQuery();
            }
        }
        private void InsertComment(string imageName, string userComment)
        {
            string query = "INSERT INTO GalleryComment (ImageName, UserComment, LikeCount) VALUES (@ImageName, @UserComment, 0)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@ImageName", imageName);
                command.Parameters.AddWithValue("@UserComment", userComment);

                connection.Open();
                command.ExecuteNonQuery();
            }
        }











    }
}
