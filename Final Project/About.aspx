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

        /* Picture Gallery Section */
        .picture-gallery {
            padding: 40px;
            text-align: center;
            background-color: #f4f4f4;
        }

        .gallery-item {
            display: inline-block;
            margin: 20px;
            width: 45%;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }

        .gallery-item img {
            width: 100%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 15px;
        }

        .gallery-info {
            margin-top: 10px;
        }

        .like-button {
            background-color: #ff5733;
            color: white;
            border: none;
            padding: 10px 15px;
            font-size: 16px;
            cursor: pointer;
        }

        .like-button:hover {
            background-color: #d94d2c;
        }

        .comment-section {
            margin-top: 20px;
        }

        .comment-section textarea {
            width: 80%;
            height: 80px;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 16px;
        }

        .submit-comment {
            background-color: #ff5733;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
            margin-top: 10px;
        }

        .submit-comment:hover {
            background-color: #d94d2c;
        }

        .likes-count {
            margin-left: 10px;
        }

        /* Video Section */
        .video-section {
            padding: 40px;
            text-align: center;
            background-color: #fff;
        }

        .video-section iframe {
            border-radius: 10px;
        }

        /* Social Share Section */
        .social-share {
            padding: 40px;
            text-align: center;
            background-color: #f4f4f4;
        }

        .social-icons a {
            margin: 0 10px;
        }

        .social-icons img {
            width: 40px;
            height: 40px;
        }

        /* Review & Rating Section */
        .review-rating {
            padding: 40px;
            text-align: center;
            background-color: #fff;
        }

        .review-rating h2 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        .review-rating p {
            font-size: 18px;
            color: #555;
            margin-bottom: 20px;
        }

        .rating {
            margin-bottom: 20px;
        }

        .rating select {
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        .review-text textarea {
            width: 80%;
            height: 100px;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 16px;
        }

        .submit-review {
            background-color: #ff5733;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        .submit-review:hover {
            background-color: #d94d2c;
        }

        .review-feedback {
            margin-top: 20px;
            font-size: 18px;
            color: #4CAF50;
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
                     <li><a href="FAQ.aspx">FAQ</a></li>
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

            <!-- Picture Gallery Section -->
          <section class="picture-gallery">
    <h2>Our Restaurant in Action</h2>
    <div class="gallery-item">
        <img src="img/diningarea.jpg" alt="Dining Area" />
        <div class="gallery-info">
            <asp:Button ID="Button1" runat="server" Text="👍 Like" CssClass="like-button" OnClick="LikeButton_Click" CommandArgument="diningarea" />
            <asp:Label ID="likesCount1" runat="server" CssClass="likes-count">0 Likes</asp:Label>
            <div class="comment-section">
                <textarea id="txtCommentdiningarea" runat="server" placeholder="Leave a comment..."></textarea>
                <asp:Button ID="btnSubmitComment1" runat="server" Text="Submit Comment" CommandArgument="diningarea" OnClick="SubmitComment_Click" />
            </div>
        </div>
    </div>
    <div class="gallery-item">
        <img src="img/plating.jpg" alt="Food Plating" />
        <div class="gallery-info">
            <asp:Button ID="Button2" runat="server" Text="👍 Like" CssClass="like-button" OnClick="LikeButton_Click" CommandArgument="plating" />
            <asp:Label ID="likesCount2" runat="server" CssClass="likes-count">0 Likes</asp:Label>
            <div class="comment-section">
                <textarea id="txtCommentplating" runat="server" placeholder="Leave a comment..."></textarea>
                <asp:Button ID="btnSubmitComment2" runat="server" Text="Submit Comment" CommandArgument="plating" OnClick="SubmitComment_Click" />
            </div>
        </div>
    </div>
</section>




            <!-- Video Section -->
   <section class="video-section">
    <h2>Take a Tour of Quick Bite</h2>
    <div class="video-container">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/8E34CjzRhwM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
</section>




            <!-- Social Share Section -->
            <section class="social-share">
                <h2>Share with Your Friends</h2>
                <div class="social-icons">
                    <a href="https://www.facebook.com/sharer/sharer.php?u=http://example.com" target="_blank">
                        <img src="img/fb.jpg" alt="Share on Facebook">
                    </a>
                    <a href="https://twitter.com/share?url=http://example.com" target="_blank">
                        <img src="img/twitter.jpg" alt="Share on Twitter">
                    </a>
                    <a href="https://www.instagram.com" target="_blank">
                        <img src="img/insta.png" alt="Share on Instagram">
                    </a>
                </div>
            </section>

            <!-- Review & Rating Section -->
             <section class="review-rating">
                <h2>Leave Us a Review</h2>
                <p>We would love to hear your thoughts on your experience at Quick Bite. Please leave us a rating and a comment!</p>

                <!-- Rating System -->
                <div class="rating">
                    <label for="rating">Rate Us:</label>
                    <asp:DropDownList ID="ratingDropdown" runat="server">
                        <asp:ListItem Value="1">1 Star</asp:ListItem>
                        <asp:ListItem Value="2">2 Stars</asp:ListItem>
                        <asp:ListItem Value="3">3 Stars</asp:ListItem>
                        <asp:ListItem Value="4">4 Stars</asp:ListItem>
                        <asp:ListItem Value="5">5 Stars</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <!-- Review Text Area -->
                <div class="review-text">
                    <asp:TextBox ID="reviewTextBox" runat="server" TextMode="MultiLine" Rows="4" Width="80%"></asp:TextBox>
                </div>

                <!-- Submit Button -->
                <asp:Button ID="submitReviewButton" runat="server" Text="Submit Review" CssClass="submit-review" OnClick="SubmitReview" />

                <div class="review-feedback">
                    <asp:Label ID="feedbackLabel" runat="server" ForeColor="Green" Visible="false"></asp:Label>
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