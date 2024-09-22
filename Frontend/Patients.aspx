<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patients.aspx.cs" Inherits="Frontend_Patients" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>New Patient Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2 class="text-center">New Patient Registration</h2>
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtName">Name:</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your name"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="txtEmail">Email:</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="txtPassword">Password:</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="txtConfirmPassword">Confirm Password:</label>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm your password"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="ddlGender">Gender:</label>
                        <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Select" Value=""></asp:ListItem>
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label for="txtHeight">Height (cm):</label>
                        <asp:TextBox ID="txtHeight" runat="server" CssClass="form-control" placeholder="Enter your height"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="txtWeight">Weight (kg):</label>
                        <asp:TextBox ID="txtWeight" runat="server" CssClass="form-control" placeholder="Enter your weight"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="ddlBloodGroup">Blood Group:</label>
                        <asp:DropDownList ID="ddlBloodGroup" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Select" Value=""></asp:ListItem>
                            <asp:ListItem Text="A+" Value="A+"></asp:ListItem>
                            <asp:ListItem Text="A-" Value="A-"></asp:ListItem>
                            <asp:ListItem Text="B+" Value="B+"></asp:ListItem>
                            <asp:ListItem Text="B-" Value="B-"></asp:ListItem>
                            <asp:ListItem Text="O+" Value="O+"></asp:ListItem>
                            <asp:ListItem Text="O-" Value="O-"></asp:ListItem>
                            <asp:ListItem Text="AB+" Value="AB+"></asp:ListItem>
                            <asp:ListItem Text="AB-" Value="AB-"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label for="txtMedicalProblems">Medical Problems:</label>
                        <asp:TextBox ID="txtMedicalProblems" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Enter any medical problems"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="txtAge">Age:</label>
                        <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" placeholder="Enter your age"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="ddlBP">BP (Yes/No):</label>
                        <asp:DropDownList ID="ddlBP" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Select" Value=""></asp:ListItem>
                            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                            <asp:ListItem Text="No" Value="No"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label for="ddlSugar">Sugar (Yes/No):</label>
                        <asp:DropDownList ID="ddlSugar" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Select" Value=""></asp:ListItem>
                            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                            <asp:ListItem Text="No" Value="No"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label for="txtPhone">Phone:</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Enter your phone number"></asp:TextBox>
                    </div>

                    <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-primary" Text="Register" OnClick="btnRegister_Click" />
                </div>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
