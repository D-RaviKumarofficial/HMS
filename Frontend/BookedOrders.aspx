<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookedOrders.aspx.cs" Inherits="Frontend_BookedOrders" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booked Orders</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> <!-- Add Font Awesome -->
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
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #007bff;
            margin-bottom: 30px;
            animation: slideInDown 0.5s;
            text-align: center;
            font-weight: bold;
        }

        @keyframes slideInDown {
            from { transform: translateY(-30px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        .btn-light {
            color: #007bff;
            background-color: #fff;
            border-color: #007bff;
            font-weight: bold;
        }

        .btn-light:hover {
            background-color: #007bff;
            color: white;
        }

        .table th {
            background-color: #007bff;
            color: white;
        }

        .table td {
            transition: background-color 0.3s;
        }

        .table tbody tr:hover td {
            background-color: #e9ecef;
        }
        
        .text-center {
            margin-bottom: 20px;
        }

        /* Add some additional styles for responsiveness */
        @media (max-width: 768px) {
            .container {
                padding: 15px;
            }

            h2 {
                font-size: 1.5rem;
            }
        }

        .table-responsive {
            overflow-x: auto;
        }

        /* Add custom scrollbar for better look */
        ::-webkit-scrollbar {
            width: 8px;
        }

        ::-webkit-scrollbar-thumb {
            background: #007bff;
            border-radius: 4px;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <h2>Orders Received</h2>
                <a href="Pharmacy.aspx" class="btn btn-light">
                    <i class="fas fa-pencil-alt"></i> <!-- Pencil Icon -->
                </a>
            </div>

            <div class="table-responsive">
                <asp:GridView ID="gridOrders" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Order ID" />
                        <asp:BoundField DataField="medicine_name" HeaderText="Medicine Name" />
                        <asp:BoundField DataField="customer_name" HeaderText="Customer Name" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="contact_number" HeaderText="Contact Number" />
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
