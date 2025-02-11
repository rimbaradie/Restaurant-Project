using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace Final_Project
{
    public partial class Order : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitOrder(object sender, EventArgs e)
        {
            // Retrieve data from form fields
            string fullName = Request.Form["name"];
            string email = Request.Form["email"];
            string phone = Request.Form["phone"];
            string foodItem = Request.Form["food-item"];
            string sideItem = Request.Form["side-item"];
            string drinkItem = Request.Form["drink-item"];
            int quantity = Convert.ToInt32(Request.Form["quantity"]);
            string specialRequest = Request.Form["special-request"];

            // Connection string from web.config
            string connectionString = ConfigurationManager.ConnectionStrings["OrderDBConnection"].ConnectionString;

            // SQL query to insert the data
            string query = "INSERT INTO Orders (Name, Email, Phone, FoodItem, SideItem, Drinks, Quantity, SpecialRequest) " +
                           "VALUES (@Name, @Email, @Phone, @FoodItem, @SideItem, @Drinks, @Quantity, @SpecialRequest)";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Adding parameters to prevent SQL injection
                        cmd.Parameters.AddWithValue("@Name", fullName);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Phone", phone);
                        cmd.Parameters.AddWithValue("@FoodItem", foodItem);
                        cmd.Parameters.AddWithValue("@SideItem", sideItem);
                        cmd.Parameters.AddWithValue("@Drinks", drinkItem);
                        cmd.Parameters.AddWithValue("@Quantity", quantity);
                        cmd.Parameters.AddWithValue("@SpecialRequest", specialRequest);

                        // Execute the query
                        cmd.ExecuteNonQuery();

                        // Optionally, show a confirmation message
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your order has been placed successfully!');", true);
                    }
                }
                catch (Exception ex)
                {
                    // Display the error message (optional)
                    ErrorMessage.Visible = true;
                    ErrorMessage.Text = "There was an error processing your order: " + ex.Message;
                }
            }
        }

        protected void CancelOrder(object sender, EventArgs e)
        {
            // Retrieve data from form fields (we assume email or phone number is used to identify the order)
            string email = Request.Form["email"];
            string phone = Request.Form["phone"];

            // Connection string from web.config
            string connectionString = ConfigurationManager.ConnectionStrings["OrderDBConnection"].ConnectionString;

            // SQL query to delete the user's order based on email or phone number
            string query = "DELETE FROM Orders WHERE Email = @Email OR Phone = @Phone";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Adding parameters to prevent SQL injection
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Phone", phone);

                        // Execute the query
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Optionally, show a confirmation message
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your order has been canceled.');", true);
                        }
                        else
                        {
                            // Optionally, show an error message if no matching record was found
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('No order found to cancel.');", true);
                        }
                    }

                    // Redirect to the home page after canceling the order
                    Response.Redirect("Home.aspx");
                }
                catch (Exception ex)
                {
                    // Display the error message (optional)
                    ErrorMessage.Visible = true;
                    ErrorMessage.Text = "There was an error canceling your order: " + ex.Message;
                }
            }
        }
    }
}
