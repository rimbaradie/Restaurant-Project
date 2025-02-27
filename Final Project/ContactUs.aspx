<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Final_Project.ContactUs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us - Quick Bite</title>
    <style>
        /* General Styles */
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

        nav ul li a:hover {
            background-color: #ff5733;
            color: white;
        }

        /* Contact Section */
        .contact-container {
            display: flex;
            justify-content: space-between;
            padding: 40px 5%;
            gap: 20px;
            margin-top: 60px;
        }

        /* Contact Form */
        .contact-form {
            width: 60%;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .contact-form h2 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }

       .contact-form input[type="button"],
.contact-form input[type="submit"] {
    background-color: #ff5733;
    color: white;
    padding: 15px 20px;
    border: none;
    border-radius: 5px;
    font-size: 18px;
    cursor: pointer;
    width: 100%;
    transition: background-color 0.3s;
}

.contact-form input[type="button"]:hover,
.contact-form input[type="submit"]:hover {
    background-color: #d94d2c;
}



        /* Contact Information */
        .contact-info {
            width: 35%;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .contact-info h3 {
            font-size: 24px;
            color: #333;
        }

        .contact-info p {
            font-size: 16px;
            color: #555;
            line-height: 1.6;
        }

        /* Google Map Section */
        .map-container {
            width: 100%;
            margin-top: 40px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .map-container iframe {
            width: 100%;
            height: 400px;
            border: none;
        }

        /* Footer Section */
        footer {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
            margin-top: 60px;
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

        /* Responsive Design */
        @media (max-width: 768px) {
            .contact-container {
                flex-direction: column;
                align-items: center;
                padding: 20px;
            }

            .contact-form,
            .contact-info {
                width: 100%;
                margin-bottom: 20px;
            }

            .contact-form h2 {
                font-size: 26px;
            }


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
                    <li><a href="FAQ.aspx">FAQ</a></li>
                </ul>
            </nav>

            <!-- Contact Section -->
            <div class="contact-container">
                <!-- Contact Form -->
                <div class="contact-form">
                    <h2>Get In Touch</h2>
                    <asp:TextBox ID="txtName" runat="server" Placeholder="Your Name" Required="true" CssClass="form-input"></asp:TextBox>
                    <asp:TextBox ID="txtEmail" runat="server" Placeholder="Your Email" Required="true" CssClass="form-input"></asp:TextBox>
                    <asp:TextBox ID="txtSubject" runat="server" Placeholder="Subject" Required="true" CssClass="form-input"></asp:TextBox>
                    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Placeholder="Your Message" Rows="6" Required="true" CssClass="form-input"></asp:TextBox>
                    <asp:Button ID="btnSendMessage" runat="server" Text="Send Message" OnClick="btnSendMessage_Click" CssClass="form-button" />
                </div>

                <!-- Contact Info -->
                <div class="contact-info">
                    <h3>Contact Details</h3>
                    <p><strong>Phone:</strong> +961 123 4567</p>
                    <p><strong>Email:</strong> info@quickbite.com</p>
                    <p><strong>Address:</strong> Hamra Street, Beirut, Lebanon</p>
                    <p><strong>Working Hours:</strong> Mon - Sun, 10:00 AM - 10:00 PM</p>
                </div>
            </div>

            <!-- Google Map Section -->
           

            <!-- Footer Section -->
            <footer>
                <p>&copy; 2025 Quick Bite. All rights reserved.</p>
                <p><a href="PrivacyPolicy.aspx">Privacy Policy</a> | <a href="TermsConditions.aspx">Terms & Conditions</a></p>
            </footer>
        </div>
    </form>
</body>
</html>
