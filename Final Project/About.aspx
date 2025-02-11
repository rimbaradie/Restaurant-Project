<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Final_Project.About" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us - Quick Bite</title>
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

        /* Header Section */
        .main-header {
            background-color: #333;
            padding: 20px;
            text-align: center;
        }

        .main-header .logo img {
            width: 150px;
        }

        /* About Us Section */
        .about-us {
            padding: 40px;
            text-align: center;
            background-color: #fff;
            margin-top: 20px;
        }

        .about-us h2 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        .about-us p {
            font-size: 18px;
            margin-bottom: 20px;
            color: #555;
        }

        /* Chef Master Section */
        .chef-masters {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-top: 40px;
        }

        .chef-master {
            width: 30%;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 20px 0;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }

        .chef-master img {
            width: 100%;
            height: auto;
            border-radius: 50%;
            margin-bottom: 20px;
        }

        .chef-master h3 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .chef-master p {
            font-size: 16px;
            color: #555;
        }

        /* Team Feature Section */
        .team-feature {
            background-color: #f4f4f4;
            padding: 40px 20px;
            text-align: center;
        }

        .team-feature h2 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        .team-feature p {
            font-size: 18px;
            margin-bottom: 20px;
            color: #555;
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

            <!-- Header Section -->
            <header class="main-header">
                <div class="logo">
                    <img src="img/logoo.jpeg" alt="Quick Bite Restaurant Logo" />
                </div>
            </header>

            <!-- About Us Section -->
            <section class="about-us">
                <h2>Our Story</h2>
                <p>Quick Bite was founded in 2015 with the mission to provide the best fast food with an emphasis on high-quality ingredients and a quick, efficient service experience. From a humble beginning, we have become one of the top fast-food spots in town.</p>
                <p>Our experience and commitment to quality have earned us a loyal customer base. We continue to innovate and offer exciting new options to keep our customers coming back for more. Whether it's a quick bite on the go or a family gathering, we aim to make every meal a delightful experience!</p>
            </section>

            <!-- Chef Master Section -->
            <section class="chef-masters">
                <div class="chef-master">
                    <img src="img/Anna.jpg" alt="Chef Master 1" />
                    <h3>Chef Anna Smith</h3>
                    <p>Chef Anna brings over 20 years of culinary expertise, specializing in gourmet burgers and mouthwatering sides. Her passion for fresh, quality ingredients shines through in every dish she creates.</p>
                </div>
                <div class="chef-master">
                    <img src="img/john.jpg" alt="Chef Master 2" />
                    <h3>Chef John Doe</h3>
                    <p>Chef John is a master of creating delicious and creative fast food options. His innovative approach to classic dishes has garnered much praise from our regulars.</p>
                </div>
                <div class="chef-master">
                    <img src="img/chef2.jpg" alt="Chef Master 3" />
                    <h3>Chef Emma Williams</h3>
                    <p>Chef Emma has been a core part of Quick Bite since its early days. Her talent in crafting crispy, flavorful sides and her dedication to service has been key to our success.</p>
                </div>
            </section>

            <!-- Meet Our Team Section -->
            <section class="team-feature">
                <h2>Meet Our Team</h2>
                <p>Our team is the heart and soul of Quick Bite. From the kitchen to the service area, each team member plays a key role in ensuring that every visit is a great experience. We work hard to bring you delicious food and fast service, always with a smile!</p>
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

