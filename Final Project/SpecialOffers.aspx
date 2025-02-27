<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpecialOffers.aspx.cs" Inherits="Final_Project.SpecialOffers" %>

 

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Special Offers - Quick Bite</title>
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

        /* Special Offers Section */
        .special-offers {
            padding: 40px 20px;
            text-align: center;
            background-color: #fff;
        }

        .special-offers h2 {
            font-size: 30px;
            margin-bottom: 40px;
            color: #333;
        }

        .offer-card {
            display: inline-block;
            width: 30%;
            margin: 10px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .offer-card:hover {
            transform: scale(1.05);
        }

        .offer-card img {
            width: 100%;
            border-radius: 8px;
        }

        .offer-card h3 {
            font-size: 24px;
            margin-top: 20px;
            color: #333;
        }

        .offer-card p {
            font-size: 18px;
            color: #555;
            margin-top: 10px;
        }

        .offer-card .price {
            font-size: 20px;
            font-weight: bold;
            color: #ff5733;
            margin-top: 20px;
        }

        .offer-card button {
            background-color: #ff5733;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            font-size: 18px;
            cursor: pointer;
            margin-top: 20px;
        }

        .offer-card button:hover {
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
        /* Style for Claim Offer button link */
.claim-button {
    background-color: #ff5733;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    font-size: 18px;
    text-decoration: none;
    display: inline-block;
    cursor: pointer;
    margin-top: 20px;
    text-align: center;
}

.claim-button:hover {
    background-color: #d94d2c;
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

            <!-- Special Offers Section -->
            <section class="special-offers">
                <h2>Our Special Offers</h2>

                <!-- Offer Card 1 -->
                <div class="offer-card">
                    <img src="img/burger.jpg" alt="Burger Offer" />
                    <h3>Buy One, Get One Free</h3>
                    <p>Enjoy our classic burger with a friend! Buy one and get the second one free. Limited time offer.</p>
                    <p class="price">$8.99</p>
                    <a href="ClaimOrders.aspx" class="claim-button">Claim Offer</a>
                </div>

                <!-- Offer Card 2 -->
                <div class="offer-card">
                    <img src="img/crispy.jpg" alt="Fries Offer" />
                    <h3>Free Fries with Every Meal</h3>
                    <p>Order any main dish and get a serving of crispy fries on the house! Don't miss out!</p>
                    <p class="price">Free</p>
                      <a href="ClaimOrders.aspx" class="claim-button">Claim Offer</a>
                </div>

                <!-- Offer Card 3 -->
                <div class="offer-card">
                    <img src="img/soda.jpg" alt="Drink Offer" />
                    <h3>Buy One Drink, Get One Free</h3>
                    <p>Enjoy any of our refreshing drinks and get another one free. Perfect for sharing with friends!</p>
                    <p class="price">$3.49</p>
                     <a href="ClaimOrders.aspx" class="claim-button">Claim Offer</a>
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

