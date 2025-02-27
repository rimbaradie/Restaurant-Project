<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="Final_Project.FAQ" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Frequently Asked Questions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
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
        .header {
            background-color: #f04e23;
            color: white;
            padding: 15px 0;
            text-align: center;
        }
        .container {
            width: 80%;
            margin: 30px auto;
        }
        .faq-box {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            padding: 20px;
        }
        .faq-box h2 {
            color: #f04e23;
        }
        .faq-box p {
            color: #555;
            font-size: 16px;
        }
        .faq-box .question {
            font-weight: bold;
            color: #333;
        }
        .faq-box .answer {
            margin-top: 10px;
            color: #666;
            font-size: 14px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
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
        <div class="header">
            <h1>Frequently Asked Questions</h1>
        </div>

        <div class="container">
            <div class="faq-box">
                <h2>General Questions</h2>
                <p class="question">1. What are your hours of operation?</p>
                <p class="answer">We are open every day from 10:00 AM to 10:00 PM. Our delivery service is available from 11:00 AM to 9:30 PM.</p>
            </div>

            <div class="faq-box">
                <p class="question">2. What are your delivery times?</p>
                <p class="answer">Delivery times typically range between 30-45 minutes, depending on your location and time of order. You will receive an estimated delivery time at checkout.</p>
            </div>

            <div class="faq-box">
                <p class="question">3. Do you offer vegetarian or vegan options?</p>
                <p class="answer">Yes! We offer vegetarian and vegan options for most of our menu items. Check our menu for the "Vegan" and "Vegetarian" labels next to applicable items.</p>
            </div>

            <div class="faq-box">
                <p class="question">4. Can I customize my order?</p>
                <p class="answer">Absolutely! You can customize most items by adding or removing toppings and choosing different sides. Just let us know your preferences when ordering.</p>
            </div>

            <div class="faq-box">
                <p class="question">5. Do you have allergy-friendly options?</p>
                <p class="answer">We take allergies seriously. Please refer to our allergen guide on the menu page or contact us for more information regarding ingredients that may contain allergens.</p>
            </div>

            <div class="faq-box">
                <p class="question">6. What payment methods do you accept?</p>
                <p class="answer">We accept credit and debit cards, as well as digital wallets like Apple Pay, Google Pay, and PayPal. We also accept cash on delivery for in-person orders.</p>
            </div>
        </div>

    </form>

</body>
</html>

