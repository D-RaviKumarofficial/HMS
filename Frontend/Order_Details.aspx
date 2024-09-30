<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order_Details.aspx.cs" Inherits="Frontend_OrderPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Details</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            animation: fadeIn 0.5s;
            font-family: 'Arial', sans-serif;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .container {
            margin-top: 50px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 30px;
            background-color: white;
        }

        h2 {
            margin-bottom: 30px;
            color: #007bff;
            animation: slideInDown 0.5s;
            text-align: center;
        }

        @keyframes slideInDown {
            from { transform: translateY(-30px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        .form-group label {
            font-weight: bold;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            transition: transform 0.3s, background-color 0.3s;
        }

        .btn-primary:hover {
            transform: scale(1.05);
            background-color: #0056b3;
        }

        .form-control:focus {
            box-shadow: none;
            border-color: #007bff;
        }

        .form-control {
            transition: border-color 0.3s;
        }

        .text-center {
            margin-top: 30px;
        }

        .footer {
            margin-top: 50px;
            text-align: center;
            color: #6c757d;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Order Details</h2>

            <div class="form-group">
                <label for="txtMedicineName">Medicine Name:</label>
                <asp:TextBox ID="txtMedicineName" runat="server" CssClass="form-control" placeholder="Enter Medicine Name"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtCustomerName">Customer Name:</label>
                <asp:TextBox ID="txtCustomerName" runat="server" CssClass="form-control" placeholder="Enter Customer Name"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtQuantity">Quantity:</label>
                <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" TextMode="Number" placeholder="Enter Quantity"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtContact">Contact Number:</label>
                <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" placeholder="Enter Contact Number"></asp:TextBox>
            </div>

            <div class="text-center">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit Order" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
            </div>
        </div>
        <div class="footer">
            <p>&copy; 2024 Your Company Name. All rights reserved.</p>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
