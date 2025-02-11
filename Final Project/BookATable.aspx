<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookATable.aspx.cs" Inherits="Final_Project.BookATable" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book A Table - Quick Bite</title>
    <style>
        /* General Styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        /* Navigation Bar */
        nav {
            background-color: #333;
            overflow: hidden;
            position: sticky;
            top: 0;
            width: 100%;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            text-align: center;
        }

        nav ul li {
            display: inline;
        }

        nav ul li a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            display: inline-block;
            font-size: 18px;
        }

        nav ul li a:hover {
            background-color: #ff5733;
            color: white;
        }

        /* Book A Table Section */
        .book-a-table {
            padding: 40px 20px;
            text-align: center;
            background-color: #fff;
        }

        .book-a-table h2 {
            font-size: 30px;
            margin-bottom: 40px;
            color: #333;
        }

        /* Form Styling */
        .booking-form {
            width: 50%;
            margin: 0 auto;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .booking-form input, .booking-form select, .booking-form textarea {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

       .booking-form button,
button[type="submit"],
.btn-primary {
    padding: 10px 20px;
    background-color: #ff5733; /* Orange color */
    color: white;
    border: none;
    cursor: pointer;
    font-size: 18px;
    text-align: center;
    display: inline-block;
    border-radius: 5px; /* Optional: for rounded corners */
    transition: background-color 0.3s ease; /* Optional: smooth transition */
}

/* Hover effect */
.booking-form button:hover,
button[type="submit"]:hover,
.btn-primary:hover {
    background-color: #d94d2c; /* Darker shade on hover */
}

        /* Footer Section */
        footer {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
            margin-top: 20px;
        }

        footer p {
            font-size: 16px;
            margin: 5px 0;
        }

        footer a {
            color: #ff5733;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }

    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <!-- Navigation Bar -->
            <nav>
                <ul>
                    <li><a href="Home.aspx">Home</a></li>
                    <li><a href="About.aspx">About Us</a></li>
                    <li><a href="Menu.aspx">Menu</a></li>
                      <li><a href="SpecialOffers.aspx">Special Offers</a></li>
                    <li><a href="ContactUs.aspx">Contact Us</a></li>
                    <li><a href="BookATable.aspx">Book A Table</a></li>
                    <li><a href="Location.aspx">Location</a></li>
                </ul>
            </nav>

            <!-- Book A Table Section -->
            <section class="book-a-table">
                <h2>Book A Table</h2>
                <p>Reserve your table now and enjoy a great dining experience!</p>
                
                <!-- Booking Form -->
                <div class="booking-form">
                    <asp:TextBox ID="txtName" runat="server" placeholder="Enter your full name" CssClass="form-control" required="true"></asp:TextBox><br />

                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email address" CssClass="form-control" required="true"></asp:TextBox><br />

                    <asp:TextBox ID="txtPhone" runat="server" placeholder="Enter your phone number" CssClass="form-control" required="true"></asp:TextBox><br />

                    <asp:DropDownList ID="ddlPartySize" runat="server" CssClass="form-control">
                        <asp:ListItem Text="2 People" Value="2"></asp:ListItem>
                        <asp:ListItem Text="4 People" Value="4"></asp:ListItem>
                        <asp:ListItem Text="6 People" Value="6"></asp:ListItem>
                        <asp:ListItem Text="8 People" Value="8"></asp:ListItem>
                        <asp:ListItem Text="10 People" Value="10"></asp:ListItem>
                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                    </asp:DropDownList><br />

                    <asp:TextBox ID="txtReservationDate" runat="server" TextMode="Date" CssClass="form-control" required="true"></asp:TextBox><br />

                    <asp:TextBox ID="txtReservationTime" runat="server" TextMode="Time" CssClass="form-control" required="true"></asp:TextBox><br />

                    <asp:TextBox ID="txtSpecialRequests" runat="server" TextMode="MultiLine" Rows="4" placeholder="Any special requests or dietary restrictions?" CssClass="form-control"></asp:TextBox><br />

                    <asp:Button ID="btnSubmit" runat="server" Text="Book Table" OnClick="SubmitBooking" CssClass="btn-primary" />
                   
                </div>
            </section>
         

            <!-- Footer Section -->
            <footer>
                <p>&copy; 2025 Quick Bite. All rights reserved.</p>
                <p><a href="ContactUs.aspx">Contact Us</a> | <a href="Location.aspx">Find Us</a></p>
            </footer>
        </div>
    </form>
</body>
</html>

