<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Final_Project.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quick Bite - Home</title>

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

        /* Main header */
        .main-header {
            background-color: #333;
            padding: 20px;
            text-align: center;
        }

        .main-header .logo img {
            width: 150px;
        }

        /* Hero Section */
        .hero-section {
            position: relative;
            width: 100%;
        }

        .hero-section img {
            width: 100%;
            height: auto;
            display: block;
        }

        .hero-text {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
            text-align: center;
        }

        .hero-text h1 {
            font-size: 50px;
            margin: 0;
        }

        .hero-text p {
            font-size: 20px;
            margin: 20px 0;
        }

        .cta-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #ff5733;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
        }

        .cta-button:hover {
            background-color: #d94d2c;
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
        }

        .learn-more {
            color: #ff5733;
            text-decoration: none;
            font-weight: bold;
        }

        /* Food Ideas Section */
        .food-ideas {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            padding: 40px 20px;
            background-color: #f9f9f9;
        }

        .food-idea-item {
            width: 45%;
            margin: 20px 0;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            text-align: center;
        }

        .food-idea-item img {
            width: 100%;
            height: auto;
        }

        .food-idea-item h3 {
            font-size: 22px;
            margin-top: 10px;
        }

        .food-idea-item p {
            font-size: 16px;
            margin-bottom: 10px;
        }

        .food-idea-item .cta-button {
            margin-bottom: 20px;
        }

        /* Testimonials Section */
        .testimonials {
            background-color: #fff;
            padding: 40px 20px;
            text-align: center;
        }

        .testimonials h2 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        .testimonial-item {
            margin-bottom: 20px;
            font-size: 18px;
            font-style: italic;
            color: #555;
        }

        /* Promotions Section */
        .promotions {
            background-color: #f4f4f4;
            padding: 40px 20px;
            text-align: center;
        }

        .promotions h2 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        .promo-item {
            background-color: white;
            padding: 20px;
            margin: 15px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .promo-item h3 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .promo-item p {
            font-size: 16px;
            margin-bottom: 10px;
        }

        /* Newsletter Section */
        .newsletter {
            padding: 40px 20px;
            background-color: #333;
            color: white;
            text-align: center;
        }

        .newsletter h2 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        .newsletter form {
            margin-top: 20px;
        }

        .newsletter input[type="email"] {
            padding: 10px;
            width: 300px;
            margin-right: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 16px;
        }

        .newsletter button {
            padding: 10px 20px;
            background-color: #ff5733;
            color: white;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            font-size: 18px;
        }

        .newsletter button:hover {
            background-color: #d94d2c;
        }

        /* Social Media Section */
        .social-media {
            padding: 40px 20px;
            text-align: center;
            background-color: #fff;
        }

        .social-media h2 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        .social-icons a {
            margin: 0 15px;
        }

        .social-icons img {
            width: 40px;
            height: 40px;
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

        /* Responsive Design */
        @media (max-width: 768px) {
            .food-ideas {
                flex-direction: column;
                align-items: center;
            }

            .food-idea-item {
                width: 80%;
            }

            .testimonials,
            .promotions,
            .newsletter,
            .social-media {
                padding: 20px;
            }

            .food-idea-item img {
                width: 100%;
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
                     <li><a href="nutrition.aspx">Nourishment</a></li>
                    <li><a href="ContactUs.aspx">Contact Us</a></li>
                    <li><a href="BookATable.aspx">Book A Table</a></li>
                    <li><a href="Location.aspx">Location</a></li>
                     <li><a href="FAQ.aspx">FAQ</a></li>
                     <li><a href="Delivery.aspx">Delivery</a></li>
                </ul>
            </nav>

            <!-- Header Section -->
            <header class="main-header">
                <div class="logo">
                    <img src="img/logoo.jpeg" alt="Quick Bite Restaurant Logo" />
                </div>
            </header>

            <!-- Hero Section (Full Image) -->
            <section class="hero-section">
                <img src="img/food.jpg" alt="Quick Bite Restaurant" />
                <div class="hero-text">
                    <h1>Welcome to Quick Bite!</h1>
                    <p>Your one-stop destination for delicious fast food!</p>
                    <a href="Menu.aspx" class="cta-button">View Our Menu</a>
                </div>
            </section>

            <!-- About Us Section -->
            <section class="about-us">
                <h2>About Quick Bite</h2>
                <p>At Quick Bite, we believe in serving the best fast food in town with quick service and a smile! Explore our menu, book a table, and more.</p>
                <a href="About.aspx" class="learn-more">Learn More</a>
            </section>

            <!-- Latest Food Ideas/Promotions -->
            <section class="food-ideas">
                <h2>Recent Fast Food Ideas</h2>
                <div class="food-idea-item">
                    <img src="img/burger.jpg" alt="Delicious Burger">
                    <h3>The Big Bite Burger</h3>
                    <p>New! A juicy, extra-large burger with all the fixings!</p>
                    <a href="Menu.aspx" class="cta-button">Order Now</a>
                </div>
                <div class="food-idea-item">
                    <img src="img/crispy.jpg" alt="Crispy Fries">
                    <h3>Crispy Fries</h3>
                    <p>Perfectly golden and crispy. A must-try side dish!</p>
                    <a href="Menu.aspx" class="cta-button">Order Now</a>
                </div>
            </section>

            <!-- Testimonials Section -->
            <section class="testimonials">
                <h2>What Our Customers Say</h2>
                <div class="testimonial-item">
                    <p>"Quick Bite has the best burgers in town. Fast, fresh, and tasty! Highly recommend." - Sarah L.</p>
                </div>
                <div class="testimonial-item">
                    <p>"I love the crispy fries! They are always perfect every time." - John D.</p>
                </div>
                <div class="testimonial-item">
                    <p>"The service is quick, and the food is always delicious. My family loves coming here!" - Emily W.</p>
                </div>
            </section>

            <!-- Promotions/Deals Section -->
            <section class="promotions">
                <h2>Special Promotions</h2>
                <div class="promo-item">
                    <h3>Family Combo Deal</h3>
                    <p>Get a Family Combo with burgers, fries, and drinks for only $19.99! Limited time offer.</p>
                </div>
                <div class="promo-item">
                    <h3>Free Fries with Every Burger</h3>
                    <p>Order any burger and get a free order of crispy fries! Don’t miss out!</p>
                </div>
            </section>

            <!-- Newsletter Subscription Section -->
            <section class="newsletter">
                <h2>Stay Updated!</h2>
                <p>Subscribe to our newsletter and be the first to know about our latest promotions and menu items.</p>
                <asp:TextBox ID="EmailTextBox" runat="server" Placeholder="Enter your email" CssClass="form-input" type="email" required="true"></asp:TextBox>
                <asp:Button ID="SubscribeButton" runat="server" Text="Subscribe" CssClass="cta-button" OnClick="SubscribeButton_Click" />
                <asp:Label ID="SuccessMessageLabel" runat="server" CssClass="success-message" Visible="false"></asp:Label>
            </section>

            <!-- Social Media Links Section -->
            <section class="social-media">
                <h2>Follow Us on Social Media</h2>
                <div class="social-icons">
                    <a href="https://www.instagram.com" target="_blank">
                        <img src="img/insta.png" alt="Instagram" />
                    </a>
                    <a href="https://www.facebook.com" target="_blank">
                        <img src="img/fb.jpg" alt="Facebook" />
                    </a>
                    <a href="https://www.twitter.com" target="_blank">
                        <img src="img/twitter.jpg" alt="Twitter" />
                    </a>
                </div>
            </section>

            <!-- Footer -->
            <footer>
                <p>&copy; 2025 Quick Bite. All rights reserved.</p>
                <p><a href="ContactUs.aspx">Contact Us</a> | <a href="Location.aspx">Find Us</a></p>
            </footer>
        </div>
    </form>
</body>
</html>
