<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pharmacy.aspx.cs" Inherits="Frontend_AddStock" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Pharmacy Stock</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            animation: fadeIn 0.5s;
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
            text-align: center;
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
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2>Add Pharmacy Stock</h2>
        <form id="addStockForm" runat="server">
            <div class="form-group">
                <label for="txtDosageForm">Dosage Form:</label>
                <asp:TextBox ID="txtDosageForm" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtDosageStrength">Dosage Strength:</label>
                <asp:TextBox ID="txtDosageStrength" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtQuantityAvailable">Quantity Available:</label>
                <asp:TextBox ID="txtQuantityAvailable" runat="server" CssClass="form-control" TextMode="Number" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtExpirationDate">Expiration Date:</label>
                <asp:TextBox ID="txtExpirationDate" runat="server" CssClass="form-control" TextMode="Date" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPrice">Price:</label>
                <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" TextMode="Number" required></asp:TextBox>
            </div>
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary btn-block" Text="Submit" OnClick="btnSubmit_Click" />
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
