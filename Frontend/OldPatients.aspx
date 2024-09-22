<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OldPatients.aspx.cs" Inherits="Frontend_OldPatients" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Search Patient</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        body {
            background: url('https://source.unsplash.com/random/1920x1080') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
        }

        .glass-card {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.5);
            transition: all 0.3s ease;
        }

        .glass-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 60px rgba(0, 0, 0, 0.2);
        }

        .table {
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
        }

        .form-group {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2 class="text-center mb-4 text-white">Search Patient by Name</h2>
            <div class="glass-card">
                <div class="form-group">
                    <label for="txtSearchName" class="text-white">Enter Patient Name:</label>
                    <asp:TextBox ID="txtSearchName" runat="server" CssClass="form-control" placeholder="Enter patient name"></asp:TextBox>
                </div>
                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
                <br />

                <asp:GridView ID="gvPatients" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered mt-4">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Patient Name" />
                        <asp:BoundField DataField="RegistrationDate" HeaderText="Registration Date" DataFormatString="{0:yyyy-MM-dd}" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="Height" HeaderText="Height (cm)" />
                        <asp:BoundField DataField="Weight" HeaderText="Weight (kg)" />
                        <asp:BoundField DataField="BloodGroup" HeaderText="Blood Group" />
                        <asp:BoundField DataField="BP" HeaderText="BP (Yes/No)" />
                        <asp:BoundField DataField="Sugar" HeaderText="Sugar (Yes/No)" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                        <asp:BoundField DataField="MedicalProblems" HeaderText="Medical Problems" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>

   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</body>
</html>
