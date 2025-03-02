<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClaimOrders.aspx.cs" Inherits="Final_Project.ClaimOrders" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Claim Offer</title>

    <!-- Inline CSS for Styling -->
    <style>
      body {
           font-family: Arial, sans-serif;
          background: linear-gradient(to bottom, #f8f1e1, #f3e0c1);  /* Light cream to soft terracotta gradient */
           margin: 0;
          padding: 0;
      }

        .claim-form-container {
            width: 80%;
            max-width: 500px;
            margin: 40px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); /* Stronger shadow for a better focus effect */
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
            color: #333;
        }

        input[type="text"], input[type="email"], input[type="tel"], input[type="submit"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
        }

        /* Button Styling */
        input[type="submit"].submit-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        /* Button Hover Effect */
        input[type="submit"].submit-btn:hover {
            background-color: #45a049;
        }

        /* Success and Error Messages */
        .message {
            margin-top: 15px;
            text-align: center;
            font-weight: bold;
            color: green;
        }

        .error-message {
            margin-top: 15px;
            text-align: center;
            font-weight: bold;
            color: red;
        }

        /* Styling for Back Link (Aligned Left) */
        .back-link {
            margin: 20px;
            font-size: 16px;
            color: #4CAF50;
            font-weight: bold;
            padding: 10px 15px;
            border-radius: 4px;
            border: 1px solid #4CAF50;
            transition: background-color 0.3s, color 0.3s;
            text-decoration: none;
            display: inline-block;
        }

        .back-link:hover {
            background-color: #4CAF50;
            color: white;
        }

    </style>
</head>
<body>

    <!-- Back Link -->
    <a href="SpecialOffers.aspx" class="back-link">Back to Special Offers</a>

    <!-- Form for Claim Offer -->
    <form id="form1" runat="server">
        <div class="claim-form-container">
            <h2>Claim Your Special Offer</h2>
            <p>Enter your information to claim your special offer!</p>

            <!-- Name Input -->
            <label for="NameTextBox">Full Name:</label>
            <asp:TextBox ID="NameTextBox" runat="server" placeholder="Enter your full name" required="true" />

            <!-- Email Input -->
            <label for="EmailTextBox">Email Address:</label>
            <asp:TextBox ID="EmailTextBox" runat="server" placeholder="Enter your email" required="true" />

            <!-- Phone Input -->
            <label for="PhoneTextBox">Phone Number:</label>
            <asp:TextBox ID="PhoneTextBox" runat="server" placeholder="Enter your phone number" required="true" />

            <!-- Submit Button with OnClick -->
            <asp:Button ID="SubmitButton" runat="server" Text="Claim Offer" OnClick="SubmitForm" CssClass="submit-btn" />
        </div>
    </form>

    <!-- JavaScript for Form Validation -->
    <script>
        function validateForm() {
            var name = document.getElementById("<%= NameTextBox.ClientID %>").value;
            var email = document.getElementById("<%= EmailTextBox.ClientID %>").value;
            var phone = document.getElementById("<%= PhoneTextBox.ClientID %>").value;
            var messageDiv = document.getElementById("message");
            var errorMessageDiv = document.getElementById("errorMessage");

            // Clear previous messages
            messageDiv.innerHTML = "";
            errorMessageDiv.innerHTML = "";

            // Basic validation
            if (name === "" || email === "" || phone === "") {
                errorMessageDiv.innerHTML = "All fields are required.";
                return false;  // Prevent form submission
            }

            // Validate email
            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            if (!emailPattern.test(email)) {
                errorMessageDiv.innerHTML = "Please enter a valid email address.";
                return false;  // Prevent form submission
            }

            // Validate phone (simple validation)
            var phonePattern = /^[0-9]{10}$/;
            if (!phonePattern.test(phone)) {
                errorMessageDiv.innerHTML = "Please enter a valid phone number (10 digits).";
                return false;  // Prevent form submission
            }

            // If everything is valid, submit the form and display success message
            messageDiv.innerHTML = "Your offer has been claimed successfully!";
            submitFormToDatabase(name, email, phone);
            return false;  // Prevent form submission to allow database submission
        }

        // Simulate database submission using JavaScript
        function submitFormToDatabase(name, email, phone) {
            // Here you would send data to your server (e.g., using AJAX)
            // For the sake of this example, we just display a success message
            console.log("Data submitted:", { name, email, phone });

            // You can now submit the form to the backend (ASP.NET logic)
            // The backend will handle the database insertion
        }
    </script>

</body>
</html>
