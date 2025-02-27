<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nutrition.aspx.cs" Inherits="Final_Project.nutrition" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nutrition & Allergen Information</title>
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
            width: 80%;
            margin: 30px auto;
        }
        .info-section {
            display: flex;
            flex-wrap: wrap;
            margin-top: 20px;
        }
        .menu-item {
            flex: 1 1 calc(25% - 20px);
            margin: 10px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 15px;
            text-align: center;
        }
        .menu-item img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .menu-item h3 {
            color: #f04e23;
            margin-top: 15px;
        }
        .menu-item table {
            width: 100%;
            margin-top: 10px;
            border-collapse: collapse;
        }
        .menu-item table th, .menu-item table td {
            padding: 8px 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .menu-item table th {
            background-color: #f04e23;
            color: white;
        }
        .alert {
            color: #f04e23;
            font-weight: bold;
            background-color: #ffebeb;
            padding: 10px;
            border-radius: 5px;
            margin-top: 30px;
        }
        .section-title {
            font-size: 24px;
            color: #f04e23;
            margin-top: 30px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="header">
            <h1>Nutrition & Allergen Information</h1>
        </div>

        <div class="container">
            <p>Welcome to our nutrition and allergen information page! Please find detailed information about the nutritional breakdown and allergen content of our menu items below.</p>

            <!-- Allergen Alert -->
            <div class="alert">
                <p>For customers with severe allergies, please inform our staff before ordering. Cross-contamination is possible, and we cannot guarantee an allergen-free environment.</p>
            </div>

            <!-- Nutritional & Allergen Information -->
            <div class="section-title">Menu Items</div>
            <div class="info-section">
                <!-- Item 1: Cheeseburger -->
                <div class="menu-item">
                    <img src="img/cheeseburger.jpg" alt="Cheeseburger">
                    <h3>Cheeseburger</h3>
                    <table>
                        <tr>
                            <th>Calories</th>
                            <td>550 kcal</td>
                        </tr>
                        <tr>
                            <th>Fat</th>
                            <td>28g</td>
                        </tr>
                        <tr>
                            <th>Carbs</th>
                            <td>40g</td>
                        </tr>
                        <tr>
                            <th>Protein</th>
                            <td>28g</td>
                        </tr>
                        <tr>
                            <th>Sodium</th>
                            <td>1,100mg</td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <th>Gluten</th>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <th>Peanuts</th>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th>Tree Nuts</th>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th>Dairy</th>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <th>Eggs</th>
                            <td>Yes</td>
                        </tr>
                    </table>
                </div>

                <!-- Item 2: Vegetarian Salad -->
                <div class="menu-item">
                    <img src="img/salad.jpg" alt="Vegetarian Salad">
                    <h3>Vegetarian Salad</h3>
                    <table>
                        <tr>
                            <th>Calories</th>
                            <td>300 kcal</td>
                        </tr>
                        <tr>
                            <th>Fat</th>
                            <td>15g</td>
                        </tr>
                        <tr>
                            <th>Carbs</th>
                            <td>30g</td>
                        </tr>
                        <tr>
                            <th>Protein</th>
                            <td>8g</td>
                        </tr>
                        <tr>
                            <th>Sodium</th>
                            <td>500mg</td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <th>Gluten</th>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th>Peanuts</th>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th>Tree Nuts</th>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th>Dairy</th>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <th>Eggs</th>
                            <td>No</td>
                        </tr>
                    </table>
                </div>

                <!-- Item 3: Chicken Wings -->
                <div class="menu-item">
                    <img src="img/c.jpg" alt="Chicken Wings">
                    <h3>Chicken Wings</h3>
                    <table>
                        <tr>
                            <th>Calories</th>
                            <td>600 kcal</td>
                        </tr>
                        <tr>
                            <th>Fat</th>
                            <td>40g</td>
                        </tr>
                        <tr>
                            <th>Carbs</th>
                            <td>25g</td>
                        </tr>
                        <tr>
                            <th>Protein</th>
                            <td>40g</td>
                        </tr>
                        <tr>
                            <th>Sodium</th>
                            <td>1,500mg</td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <th>Gluten</th>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <th>Peanuts</th>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th>Tree Nuts</th>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th>Dairy</th>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <th>Eggs</th>
                            <td>Yes</td>
                        </tr>
                    </table>
                </div>

                <!-- Item 4: Crispy Fries -->
                <div class="menu-item">
                    <img src="img/crispy.jpg" alt="Crispy Fries">
                    <h3>Crispy Fries</h3>
                    <table>
                        <tr>
                            <th>Calories</th>
                            <td>350 kcal</td>
                        </tr>
                        <tr>
                            <th>Fat</th>
                            <td>18g</td>
                        </tr>
                        <tr>
                            <th>Carbs</th>
                            <td>45g</td>
                        </tr>
                        <tr>
                            <th>Protein</th>
                            <td>5g</td>
                        </tr>
                        <tr>
                            <th>Sodium</th>
                            <td>600mg</td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <th>Gluten</th>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <th>Peanuts</th>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th>Tree Nuts</th>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th>Dairy</th>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th>Eggs</th>
                            <td>No</td>
                        </tr>
                    </table>
                </div>

                <!-- Item 5: Fajita -->
                <div class="menu-item">
                    <img src="img/fahita.jpg" alt="Fajita">
                    <h3>Fajita</h3>
                    <table>
                        <tr>
                            <th>Calories</th>
                            <td>700 kcal</td>
                        </tr>
                        <tr>
                            <th>Fat</th>
                            <td>35g</td>
                        </tr>
                        <tr>
                            <th>Carbs</th>
                            <td>60g</td>
                        </tr>
                        <tr>
                            <th>Protein</th>
                            <td>40g</td>
                        </tr>
                        <tr>
                            <th>Sodium</th>
                            <td>1,000mg</td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <th>Gluten</th>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <th>Peanuts</th>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th>Tree Nuts</th>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th>Dairy</th>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <th>Eggs</th>
                            <td>No</td>
                        </tr>
                    </table>
                </div>

                <!-- Item 6: Crispy Chicken -->
                <div class="menu-item">
                    <img src="img/crispyy.jpg" alt="Crispy Chicken">
                    <h3>Crispy Chicken</h3>
                    <table>
                        <tr>
                            <th>Calories</th>
                            <td>650 kcal</td>
                        </tr>
                        <tr>
                            <th>Fat</th>
                            <td>35g</td>
                        </tr>
                        <tr>
                            <th>Carbs</th>
                            <td>45g</td>
                        </tr>
                        <tr>
                            <th>Protein</th>
                            <td>50g</td>
                        </tr>
                        <tr>
                            <th>Sodium</th>
                            <td>1,300mg</td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <th>Gluten</th>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <th>Peanuts</th>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th>Tree Nuts</th>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th>Dairy</th>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <th>Eggs</th>
                            <td>Yes</td>
                        </tr>
                    </table>
                </div>

            </div>
        </div>
    </form>

</body>
</html>
