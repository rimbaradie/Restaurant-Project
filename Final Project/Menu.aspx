<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Final_Project.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu - Quick Bite</title>
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

        /* Menu Section */
        .menu {
            padding: 40px 20px;
            text-align: center;
            background-color: #fff;
        }

        .menu h2 {
            font-size: 30px;
            margin-bottom: 40px;
            color: #333;
        }

        /* Menu Category */
        .menu-category {
            margin-bottom: 40px;
        }

        .menu-category h3 {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
        }

        .menu-item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
            font-size: 18px;
            color: #555;
            align-items: center;
        }

        .menu-item img {
            width: 60px;
            height: 60px;
            object-fit: cover;
            margin-right: 20px;
            border-radius: 8px;
        }

        .menu-item span {
            font-weight: bold;
        }

        .menu-item p {
            margin: 0;
            flex-grow: 1;
        }

        /* Featured Item Section */
        .featured-item {
            background-color: #f4f4f4;
            padding: 40px 20px;
            text-align: center;
            margin-top: 40px;
        }

        .featured-item h2 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        .featured-item p {
            font-size: 18px;
            color: #555;
            margin-bottom: 20px;
        }

        .featured-item .cta-button {
            padding: 10px 20px;
            background-color: #ff5733;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
        }

        .featured-item .cta-button:hover {
            background-color: #d94d2c;
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

            <!-- Menu Section -->
            <section class="menu">
                <h2>Our Menu</h2>

                <!-- Burgers Section -->
                <div class="menu-category">
                    <h3>Burgers</h3>
                    <div class="menu-item">
                        <img src="img/classicburger.jpg" alt="Classic Burger" />
                        <p>Classic Burger</p>
                        <span>$8.99</span>
                    </div>
                    <div class="menu-item">
                        <img src="img/bite.jpg" alt="Big Bite Burger" />
                        <p>The Big Bite Burger</p>
                        <span>$12.99</span>
                    </div>
                    <div class="menu-item">
                        <img src="img/cheeseburger.jpg" alt="Cheese Burger" />
                        <p>Cheese Burger</p>
                        <span>$9.99</span>
                    </div>
                </div>

                <!-- Sides Section -->
                <div class="menu-category">
                    <h3>Sides</h3>
                    <div class="menu-item">
                        <img src="img/crispy.jpg" alt="Crispy Fries" />
                        <p>Crispy Fries</p>
                        <span>$3.99</span>
                    </div>
                    <div class="menu-item">
                        <img src="img/onionring.jpg" alt="Onion Rings" />
                        <p>Onion Rings</p>
                        <span>$4.49</span>
                    </div>
                    <div class="menu-item">
                        <img src="img/fries.jpg" alt="Loaded Fries" />
                        <p>Loaded Fries</p>
                        <span>$5.99</span>
                    </div>
                </div>

                <!-- Drinks Section -->
                <div class="menu-category">
                    <h3>Drinks</h3>
                    <div class="menu-item">
                        <img src="img/soda.jpg" alt="Soda" />
                        <p>Soda</p>
                        <span>$1.99</span>
                    </div>
                    <div class="menu-item">
                        <img src="img/lemonade.jpg" alt="Fresh Lemonade" />
                        <p>Fresh Lemonade</p>
                        <span>$3.49</span>
                    </div>
                    <div class="menu-item">
                        <img src="img/iced.jpg" alt="Iced Tea" />
                        <p>Iced Tea</p>
                        <span>$2.99</span>
                    </div>
                </div>

            </section>

            <!-- Featured Item of the Month -->
            <section class="featured-item">
                <h2>Featured Item of the Month</h2>
                <p>This month, we're featuring our <strong>Big Bite Burger</strong> – a juicy, extra-large burger with all the fixings. Don't miss out on this delicious treat!</p>
                <a href="Order.aspx" class="cta-button">Order Now</a>
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



         

