<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Final_Project.Order" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Now - Quick Bite</title>
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
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
        }

        /* Order Form Section */
        .order-form {
            width: 60%;
            margin: 50px auto;
            background-color: white;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .order-form h2 {
            font-size: 30px;
            margin-bottom: 20px;
            text-align: center;
        }

        .order-form label {
            font-size: 18px;
            display: block;
            margin: 10px 0 5px;
        }

        .order-form input[type="text"], .order-form input[type="email"], .order-form input[type="tel"], .order-form textarea, .order-form select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        .order-form button {
            background-color: #ff5733;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            font-size: 18px;
        }


        .order-form button:hover {
            background-color: #d94d2c;
        }
     /* General Button Styling */
.btn {
    background-color: #ff5733; /* Button color */
    color: white; /* Text color */
    padding: 12px 24px; /* Padding for height and width */
    font-size: 18px; /* Text size */
    border-radius: 5px; /* Rounded corners */
    border: none; /* No border */
    cursor: pointer; /* Pointer cursor on hover */
    text-align: center; /* Centered text */
    display: inline-block; /* Ensures button stays inline */
    transition: all 0.3s ease; /* Smooth transition for effects */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Subtle shadow */
}

/* Hover effect */
.btn:hover {
    background-color: #d94d2c; /* Darker shade when hovered */
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Darker shadow on hover */
    transform: translateY(-2px); /* Slight lift on hover */
}

/* Focused effect (when clicked) */
.btn:focus {
    outline: none; /* Removes default outline */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Focused shadow */
}

/* Active state (when button is clicked) */
.btn:active {
    background-color: #d94d2c; /* Maintain dark color when clicked */
    transform: translateY(1px); /* Button pressed effect */
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2); /* Lighter shadow when clicked */
}


        /* Cancel Order Button Styling */
        /* General Button Styling (for Submit and Cancel buttons) */
.btn {
    background-color: #ff5733; /* Button color */
    color: white; /* Text color */
    padding: 12px 24px; /* Padding for height and width */
    font-size: 18px; /* Text size */
    border-radius: 5px; /* Rounded corners */
    border: none; /* No border */
    cursor: pointer; /* Pointer cursor on hover */
    text-align: center; /* Centered text */
    display: inline-block; /* Ensures button stays inline */
    transition: all 0.3s ease; /* Smooth transition for effects */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Subtle shadow */
}

/* Hover effect for Submit */
.btn:hover {
    background-color: #d94d2c; /* Darker shade when hovered */
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Darker shadow on hover */
    transform: translateY(-2px); /* Slight lift on hover */
}

/* Focused effect (when clicked) */
.btn:focus {
    outline: none; /* Removes default outline */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Focused shadow */
}

/* Active state (when button is clicked) */
.btn:active {
    background-color: #d94d2c; /* Maintain dark color when clicked */
    transform: translateY(1px); /* Button pressed effect */
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2); /* Lighter shadow when clicked */
}

.cancel-button {
    background-color: #ff5733; /* Button color */
    color: white; /* Text color */
    padding: 12px 24px; /* Padding for height and width */
    font-size: 18px; /* Text size */
    border-radius: 5px; /* Rounded corners */
    border: none; /* No border */
    cursor: pointer; /* Pointer cursor on hover */
    text-align: center; /* Centered text */
    display: inline-block; /* Ensures button stays inline */
    transition: all 0.3s ease; /* Smooth transition for effects */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Subtle shadow */
}

.cancel-button:hover {
    background-color: #d94d2c; /* Darker shade when hovered */
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Darker shadow on hover */
    transform: translateY(-2px); /* Slight lift on hover */
}

/* Focused effect (when clicked) */
.cancel-button:focus {
    outline: none; /* Removes default outline */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Focused shadow */
}

/* Active state (when button is clicked) */
.cancel-button:active {
    background-color: #d94d2c; /* Maintain dark color when clicked */
    transform: translateY(1px); /* Button pressed effect */
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2); /* Lighter shadow when clicked */
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
            <asp:Label ID="ErrorMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>


            <!-- Order Form Section -->
            <section class="order-form">
                <h2>Place Your Order</h2>

                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" required />

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required />

                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" required />

                <!-- Food Item Section -->
                <label for="food-item">Food Item:</label>
                <select id="food-item" name="food-item" required>
                    <option value="classic">Classic Burger</option>
                    <option value="burger">Big Bite Burger</option>
                    <option value="cheese">Cheese burger</option>
                </select>

                <!-- Sides Section -->
                <label for="side-item">Side Items:</label>
                <select id="side-item" name="side-item" required>
                    <option value="fries">Crispy Fries</option>
                    <option value="onion-rings">Onion Rings</option>
                    <option value="loaded-fries">Loaded Fries</option>
                </select>

                <!-- Drinks Section -->
                <label for="drink-item">Drinks:</label>
                <select id="drink-item" name="drink-item" required>
                    <option value="soda">Soda</option>
                    <option value="lemonade">Fresh Lemonade</option>
                    <option value="iced-tea">Iced Tea</option>
                </select>

                <label for="quantity">Quantity:</label>
                <input type="number" id="quantity" name="quantity" min="1" required />

                <label for="special-request">Special Requests (optional):</label>
                <textarea id="special-request" name="special-request" rows="4"></textarea>

               
               
               <asp:Button runat="server" 
                        ID="submitButton" 
                        Text="Submit Order" 
                        OnClick="SubmitOrder" 
                        CssClass="btn" />



               <asp:Button runat="server" 
     ID="cancelButton" 
    Text="Cancel Order" 
    OnClick="CancelOrder" 
    CssClass="cancel-button" />


            </section>
        </div>
    </form>

</body>
</html>
