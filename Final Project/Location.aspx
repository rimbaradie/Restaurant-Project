<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Location.aspx.cs" Inherits="Final_Project.Location" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Our Location - Quick Bite</title>
    <style>
        /* General styling */
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

        /* Location Section */
        .location {
            padding: 40px 20px;
            text-align: center;
            background-color: #fff;
        }

        .location h2 {
            font-size: 30px;
            margin-bottom: 20px;
            color: #333;
        }

        /* Map Section */
        .map-container {
            position: relative;
            height: 400px;
            width: 100%;
            margin-bottom: 40px;
        }

        .map-container iframe {
            width: 100%;
            height: 100%;
            border: 0;
        }

        /* Contact Information Section */
        .contact-info {
            background-color: #f4f4f4;
            padding: 40px 20px;
            text-align: center;
            font-size: 18px;
        }

        .contact-info p {
            margin: 5px 0;
        }

        /* Contact Form Section */
        .contact-form {
            padding: 40px 20px;
            background-color: #fff;
            text-align: center;
        }

        .contact-form h3 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            font-size: 16px;
        }

       /* Contact Form Button Styling */
.contact-form button,
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
.contact-form button:hover,
button[type="submit"]:hover,
.btn-primary:hover {
    background-color: #d94d2c; /* Darker shade on hover */
}


        /* Social Media Section */
        .social-media {
            padding: 40px 20px;
            text-align: center;
            background-color: #f4f4f4;
        }

        .social-media h3 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .social-media a {
            font-size: 20px;
            color: #333;
            margin: 0 15px;
            text-decoration: none;
        }

        .social-media a:hover {
            color: #ff5733;
        }

        /* Featured Offers Section */
        .featured-offers {
            background-color: #fff;
            padding: 40px 20px;
            text-align: center;
        }

        .featured-offers h3 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .offer-item {
            margin-bottom: 30px;
            font-size: 18px;
            color: #555;
        }

        .offer-item span {
            font-weight: bold;
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
                     <li><a href="FAQ.aspx">FAQ</a></li>
                </ul>
            </nav>

            <!-- Location Section -->
            <section class="location">
                <h2>Our Location</h2>
                <p>We are located in Beirut, Lebanon. Here’s a map to help you find us easily.</p>
                
                <!-- Map Section -->
                <div class="map-container">
                    <!-- Google Map iframe for Beirut, Lebanon -->
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423342.20638126195!2d35.51742131258778!3d33.89379102911577!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151f04f7c94e25b5%3A0xf74b9a3898c712ec!2sBeirut%2C%20Lebanon!5e0!3m2!1sen!2sus!4v1674956927614!5m2!1sen!2sus" allowfullscreen="" loading="lazy"></iframe>
                </div>
            </section>

            <!-- Contact Information Section -->
            <section class="contact-info">
                <h3>Contact Information</h3>
                <p>Address: Beirut, Lebanon</p>
                <p>Phone: +961 1 234 567</p>
                <p>Email: info@quickbite.com</p>
            </section>

            <!-- Contact Form Section -->
            <section class="contact-form">
                <h3>Contact Us</h3>
                <p>Have questions or want to get in touch? Fill out the form below!</p>

                <!-- ASP.NET Contact Form -->
                <asp:TextBox ID="txtName" runat="server" placeholder="Your Name" CssClass="form-control" required="true"></asp:TextBox><br />
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Your Email" CssClass="form-control" required="true"></asp:TextBox><br />
                <asp:TextBox ID="txtMessage" runat="server" placeholder="Your Message" CssClass="form-control" TextMode="MultiLine" Rows="4" required="true"></asp:TextBox><br />

                <asp:Button ID="btnSend" runat="server" Text="Send Message" OnClick="btnSend_Click" CssClass="btn-primary" />
            </section>

            <!-- Social Media Section -->
            <section class="social-media">
                <h3>Follow Us on Social Media</h3>
                <a href="https://facebook.com" target="_blank">Facebook</a>
                <a href="https://instagram.com" target="_blank">Instagram</a>
                <a href="https://twitter.com" target="_blank">Twitter</a>
            </section>

            <!-- Featured Offers Section -->
            <section class="featured-offers">
                <h3>Featured Offers</h3>
                <div class="offer-item">
                    <p><span>Special Deal: </span>Get 15% off on all burgers this weekend!</p>
                </div>
                <div class="offer-item">
                    <p><span>Happy Hour: </span>Enjoy 2 for 1 drinks from 4 PM to 6 PM every day!</p>
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
