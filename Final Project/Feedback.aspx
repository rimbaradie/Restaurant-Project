<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Final_Project.Feedback" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us / Feedback</title>
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
            padding: 15px 0;
            text-align: center;
        }
        .container {
            width: 70%;
            margin: 30px auto;
        }
        .form-box {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            display: flex;
            flex-direction: column;
        }
        .form-box input, .form-box textarea {
            margin-bottom: 15px;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 16px;
            width: 100%;
        }
        .form-box textarea {
            resize: vertical;
            height: 150px;
        }
        .form-box button {
            background-color: #f04e23;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .form-box button:hover {
            background-color: #d0401e;
        }
        .live-chat {
            background-color: #28a745;
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 30px;
            border-radius: 5px;
            cursor: pointer;
        }
        .live-chat:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="header">
            <h1>Contact Us / Feedback</h1>
        </div>

        <div class="container">
            <div class="form-box">
                <h2>We'd Love to Hear from You!</h2>
                <p>Please use the form below to share your thoughts, questions, or feedback.</p>

                <!-- Contact Form Fields -->
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" runat="server" required placeholder="Enter your full name" />

                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" runat="server" required placeholder="Enter your email" />

                <label for="feedback">Your Message:</label>
                <textarea id="feedback" name="feedback" runat="server" required placeholder="Write your message here"></textarea>

                <button type="submit" runat="server" onserverclick="SubmitFeedback">Submit Feedback</button>
            </div>
        </div>
    </form>

    <!-- Live Chat Integration -->
    <!-- Tawk.to Live Chat Script -->
    <script type="text/javascript">
        var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
        (function () {
            var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
            s1.async = true;
            s1.src = 'https://embed.tawk.to/your_tawkto_property_id/1fgg4h0g5';
            s1.charset = 'UTF-8';
            s1.setAttribute('crossorigin', '*');
            s0.parentNode.insertBefore(s1, s0);
        })();
    </script>

</body>
</html>
