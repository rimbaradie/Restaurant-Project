using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;

namespace Final_Project
{
    public partial class BookATable : System.Web.UI.Page
    {
      
        string connectionString = ConfigurationManager.ConnectionStrings["OrderDBConnection"].ConnectionString; 

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        // Method to insert a booking
        protected void SubmitBooking(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string partySize = ddlPartySize.SelectedValue;
            string reservationDate = txtReservationDate.Text;
            string reservationTime = txtReservationTime.Text;
            string specialRequests = txtSpecialRequests.Text;

            // Insert data into SQL Server database
            string query = "INSERT INTO Bookings (FullName, Email, Phone, PartySize, ReservationDate, ReservationTime, SpecialRequests) " +
                           "VALUES (@FullName, @Email, @Phone, @PartySize, @ReservationDate, @ReservationTime, @SpecialRequests)";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@FullName", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@PartySize", partySize);
                cmd.Parameters.AddWithValue("@ReservationDate", reservationDate);
                cmd.Parameters.AddWithValue("@ReservationTime", reservationTime);
                cmd.Parameters.AddWithValue("@SpecialRequests", specialRequests);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    // Redirect or show success message
                    Response.Write("<script>alert('Booking successful!');</script>");
                }
                catch (Exception ex)
                {
                    // Handle any errors
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
        }

        
      
    }
}
