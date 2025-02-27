<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="events.aspx.cs" Inherits="Final_Project.events" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Events & Promotions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        .header {
            background-color: #f04e23;
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        .container {
            width: 80%;
            margin: 30px auto;
        }
        .event-box {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            padding: 20px;
            display: flex;
            justify-content: space-between;
        }
        .event-info {
            flex: 1;
        }
        .event-info h2 {
            color: #f04e23;
        }
        .event-info p {
            color: #555;
        }
        .event-date {
            font-size: 18px;
            color: #333;
        }
        .event-offer {
            font-size: 18px;
            color: #28a745;
        }
        .cta-button {
            background-color: #f04e23;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
        }
        .cta-button:hover {
            background-color: #d0401e;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="header">
            <h1>Upcoming Events & Promotions</h1>
        </div>

        <div class="container">
            <div class="event-box">
                <div class="event-info">
                    <h2>Special Happy Hour</h2>
                    <p class="event-date">Date: March 1, 2025 - 5:00 PM to 7:00 PM</p>
                    <p>Enjoy amazing deals on burgers, fries, and shakes during our Happy Hour!</p>
                    <p class="event-offer">20% off all orders</p>
                </div>
                <button class="cta-button">Join Now</button>
            </div>

            <div class="event-box">
                <div class="event-info">
                    <h2>Seasonal Burger Launch</h2>
                    <p class="event-date">Date: March 15, 2025</p>
                    <p>Try our new seasonal burgers made with fresh ingredients, only available for a limited time!</p>
                    <p class="event-offer">Exclusive New Burger Combos</p>
                </div>
                <button class="cta-button">Try It Now</button>
            </div>

            <div class="event-box">
                <div class="event-info">
                    <h2>Family Meal Deals</h2>
                    <p class="event-date">Available: February 25 - March 5, 2025</p>
                    <p>Get a special family pack with everything you need for a delicious dinner at home.</p>
                    <p class="event-offer">Save 15% on Family Meals</p>
                </div>
                <button class="cta-button">Order Now</button>
            </div>
        </div>
    </form>

</body>
</html>

