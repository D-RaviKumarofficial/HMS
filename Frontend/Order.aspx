<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Frontend_AddStock" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Pharmacy Stock</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
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
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
            background-color: white;
            margin-top: 30px;
        }

        h2 {
            margin-bottom: 20px;
            animation: slideInDown 0.5s;
        }

        @keyframes slideInDown {
            from { transform: translateY(-30px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        .table th, .table td {
            transition: background-color 0.3s;
        }

        .table tr:hover {
            background-color: #f1f1f1;
        }

        .btn-order {
            background-color: #007bff;
            color: white;
            transition: transform 0.3s;
        }

        .btn-order:hover {
            transform: scale(1.05);
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2 class="text-center">Pharmacy Stock</h2>

            <div class="mt-5">
                <asp:GridView ID="gvPharmacyStock" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" OnRowCommand="gvPharmacyStock_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" />
                        <asp:BoundField DataField="dosage_form" HeaderText="Dosage Form" />
                        <asp:BoundField DataField="dosage_strength" HeaderText="Dosage Strength" />
                        <asp:BoundField DataField="quantity_available" HeaderText="Quantity Available" />
                        <asp:BoundField DataField="expiration_date" HeaderText="Expiration Date" DataFormatString="{0:yyyy-MM-dd}" />
                        <asp:BoundField DataField="price" HeaderText="Price" DataFormatString="{0:C}" />
                        <asp:TemplateField HeaderText="Order">
                            <ItemTemplate>
                                <asp:Button ID="btnOrder" runat="server" CommandName="Order" CommandArgument='<%# Eval("Id") %>' Text="Order" CssClass="btn btn-order" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
