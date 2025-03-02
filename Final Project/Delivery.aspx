<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delivery.aspx.cs" Inherits="Final_Project.Delivery" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delivery & Takeaway</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }

        nav {
            background-color: #2c3e50;
            overflow: hidden;
            position: sticky;
            top: 0;
            width: 100%;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
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
            padding: 18px 25px;
            text-decoration: none;
            display: inline-block;
            font-size: 17px;
            transition: background-color 0.3s;
        }

        nav ul li a:hover {
            background-color: #e74c3c;
        }

        .main-header {
            background-color: #2c3e50;
            padding: 25px 0;
            text-align: center;
        }

        .main-header .logo img {
            width: 180px;
            max-width: 100%;
        }

        .delivery-section {
            padding: 40px 20px;
            background-color: #fff;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            max-width: 1200px;
            border-radius: 10px;
        }

        h1 {
            font-size: 28px;
            color: #333;
            text-align: center;
            margin-bottom: 15px;
        }

        .delivery-options, .menu-section, .third-party {
            margin-bottom: 30px;
        }

        .delivery-options h2, .menu-section h2, .third-party h2 {
            color: #2c3e50;
            font-size: 22px;
            margin-bottom: 15px;
        }

        .menu-item {
            background-color: #ecf0f1;
            padding: 20px;
            margin-bottom: 25px;
            border-radius: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            transition: transform 0.3s;
        }

        .menu-item:hover {
            transform: scale(1.05);
        }

        .menu-item img {
            width: 120px;
            height: 120px;
            object-fit: cover;
            border-radius: 10px;
            margin-right: 20px;
        }

        .menu-item h3 {
            font-size: 20px;
            color: #2c3e50;
            margin: 0;
        }

        .menu-item p {
            font-size: 14px;
            color: #7f8c8d;
        }

        .menu-item span {
            font-size: 18px;
            color: #27ae60;
            font-weight: bold;
        }

        .menu-item button {
            background-color: #e74c3c;
            color: white;
            border: none;
            padding: 12px 18px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .menu-item button:hover {
            background-color: #c0392b;
        }

        .third-party-links a {
            margin-right: 25px;
            color: #2980b9;
            text-decoration: none;
            font-size: 16px;
            transition: color 0.3s;
        }

        .third-party-links a:hover {
            color: #e74c3c;
        }

        .cart-modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            display: none;
            justify-content: center;
            align-items: center;
        }

        .cart-modal-content {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            width: 350px;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        .cart-modal-content h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #2c3e50;
        }

        .cart-modal-content ul {
            list-style: none;
            padding: 0;
            margin: 20px 0;
        }

        .cart-modal-content button {
            background-color: #27ae60;
            color: white;
            border: none;
            padding: 14px 25px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            margin-top: 15px;
        }

        .cart-modal-content button:hover {
            background-color: #2ecc71;
        }
    </style>
</head>
<body>

    <!-- Navigation -->
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

    <header class="main-header">
        <div class="logo">
            <img src="img/deliverylogo.jpeg" alt="Quick Bite Restaurant Logo" />
        </div>
    </header>

    <!-- Main Section -->
    <section class="delivery-section">
        <div class="container">
            <h1>Delivery & Takeaway</h1>
            <p>Enjoy our delicious meals at the comfort of your home! Choose from our menu and get it delivered or ready for takeaway.</p>

            <!-- Delivery Options -->
            <div class="delivery-options">
                <h2>Delivery Options</h2>
                <p>We offer delivery to the following areas:</p>
                <ul>
                    <li>Downtown Beirut</li>
                    <li>Bourj Hammoud</li>
                    <li>Achrafieh</li>
                    <li>Jdeideh</li>
                    <li>Basta</li>
                    <li>Zaitunay Bay</li>
                    <li>Suburbs (Additional charges may apply)</li>
                </ul>
                <p><strong>Delivery Times:</strong> 30-50 minutes depending on your location.</p>
                <p><strong>Minimum Order:</strong> $4 for delivery.</p>
            </div>

            <!-- Menu for Delivery/Takeaway -->
            <div class="menu-section">
                <h2>Menu for Delivery/Takeaway</h2>

                <div class="menu-item">
                    <img src="img/classicburger.jpg" alt="Classic Burger" />
                    <h3>Classic Burger</h3>
                    <p>Enjoy a juicy, delicious classic burger with fresh toppings on a toasted bun!</p>
                    <span>$8.99</span>
                    <button onclick="addToCart('Classic Burger', 8.00)">Add to Cart</button>
                </div>

                <div class="menu-item">
                    <img src="img/cheeseburger.jpg" alt="Cheeseburger" />
                    <h3>Cheeseburger</h3>
                    <p>Juicy beef patty, melted cheese, lettuce, and tomato. A classic favorite!</p>
                    <span>$9.99</span>
                    <button onclick="addToCart('Cheeseburger', 10.00)">Add to Cart</button>
                </div>

                <div class="menu-item">
                    <img src="img/hotdog.jpeg" alt="Hot Dog" />
                    <h3>Hot Dog</h3>
                    <p>A sausage served in a soft bun, topped with mustard, ketchup, onions, or relish.</p>
                    <span>$7.00</span>
                    <button onclick="addToCart('Hot Dog', 7.00)">Add to Cart</button>
                </div>

                <div class="menu-item">
                    <img src="img/p.jpeg" alt="Pizza" />
                    <h3>Pizza</h3>
                    <p>Fresh mozzarella, basil, and tomato sauce on a thin crust.</p>
                    <span>$10.00</span>
                    <button onclick="addToCart('Pizza', 10.00)">Add to Cart</button>
                </div>

                <div class="menu-item">
                    <img src="img/bite.jpg" alt="Big Bite Burger" />
                                       <h3>The Big Bite Burger</h3>
                    <p>Indulge in a stacked, flavorful Big Bite burger, bursting with delicious toppings!</p>
                    <span>$12.99</span>
                    <button onclick="addToCart('Big Bite Burger', 12.99)">Add to Cart</button>
                </div>

                <div class="menu-item">
                    <img src="img/salad.jpg" alt="Vegetarian Salad" />
                    <h3>Vegetarian Salad</h3>
                    <p>Fresh greens with feta, olives, cucumbers, and tomatoes.</p>
                    <span>$8.00</span>
                    <button onclick="addToCart('Vegetarian Salad', 8.00)">Add to Cart</button>
                </div>

                <div class="menu-item">
                    <img src="img/c.jpg" alt="Chicken Wings" />
                    <h3>Chicken Wings</h3>
                    <p>Enjoy crispy, flavorful chicken wings, tossed in your favorite sauce!</p>
                    <span>$6.00</span>
                    <button onclick="addToCart('Chicken Wings', 6.00)">Add to Cart</button>
                </div>

                <div class="menu-item">
                    <img src="img/fries.jpg" alt="Loaded Fries" />
                    <h3>Loaded Fries</h3>
                    <p>Dig into crispy loaded fries, smothered in cheese, bacon, and all the toppings!</p>
                    <span>$5.99</span>
                    <button onclick="addToCart('Loaded Fries', 5.99)">Add to Cart</button>
                </div>

                <div class="menu-item">
                    <img src="img/crispy.jpg" alt="Crispy Fries" />
                    <h3>Crispy Fries</h3>
                    <p>Enjoy perfectly golden, crispy fries, seasoned to perfection!</p>
                    <span>$3.99</span>
                    <button onclick="addToCart('Crispy Fries', 3.99)">Add to Cart</button>
                </div>

                <div class="menu-item">
                    <img src="img/onionring.jpg" alt="Onion Rings" />
                    <h3>Onion Rings</h3>
                    <p>Crunch into golden, crispy onion rings, battered to perfection!</p>
                    <span>$4.49</span>
                    <button onclick="addToCart('Onion Rings', 4.49)">Add to Cart</button>
                </div>

                <div class="menu-item">
                    <img src="img/soda.jpg" alt="Soda" />
                    <h3>Soda</h3>
                    <p>Refresh with a cold, bubbly soda, packed with crisp, sweet flavor!</p>
                    <span>$1.99</span>
                    <button onclick="addToCart('Soda', 1.99)">Add to Cart</button>
                </div>
            </div>

            <!-- Third-party Delivery Services -->
            <div class="third-party">
                <h2>Order via Third-Party Services</h2>
                <p>Don't want to wait? Order now using our delivery partners:</p>
                <div class="third-party-links">
                    <a href="https://www.ubereats.com" target="_blank">UberEats</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Cart Modal -->
    <div id="cartModal" class="cart-modal">
        <div class="cart-modal-content">
            <h2>Your Cart</h2>
            <ul id="cartList"></ul>
            <p>Total: $<span id="totalAmount">0.00</span></p>
            <button onclick="checkout()">Proceed to Checkout</button>
            <button onclick="closeCart()">Close</button>
        </div>
    </div>

    <script>
        let cart = [];
        let total = 0;

        function addToCart(item, price) {
            cart.push({ item, price });
            total += price;
            updateCart();
        }

        function updateCart() {
            const cartList = document.getElementById("cartList");
            const totalAmount = document.getElementById("totalAmount");

            cartList.innerHTML = "";
            cart.forEach((cartItem) => {
                const li = document.createElement("li");
                li.textContent = `${cartItem.item} - $${cartItem.price.toFixed(2)}`;
                cartList.appendChild(li);
            });

            totalAmount.textContent = total.toFixed(2);
            openCart();
        }

        function openCart() {
            document.getElementById("cartModal").style.display = "flex";
        }

        function closeCart() {
            document.getElementById("cartModal").style.display = "none";
        }

        function checkout() {
            alert("Proceeding to checkout...");
            // Handle the checkout process
            closeCart();
        }
    </script>

</body>
</html>

