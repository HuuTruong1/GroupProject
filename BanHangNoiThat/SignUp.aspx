<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BanHangNoiThat.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="SignUp.css" rel="stylesheet" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" id="container">
            <div class="overlay-container"> 
                <div class="overlay">  
                    <div class="overlay-panel">
                        <div class="logo">
                            <asp:Image ID="logoImg" ImageUrl="~/img/logo.png" runat="server" />
                        </div>
                        <h2>Hello Friend! Welcome to Woodi</h2>
                        <p>Enter your personal details and start journey with us</p>
                    </div>
                </div>
            </div>
            <div class="sign-up-container">
                <h1>Create Account</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class='bx bxl-facebook-circle bx-sm' ></i></a>
                    <a href="#" class="social"><i class='bx bxl-google bx-sm' ></i></a>
                    <a href="#" class="social"><i class='bx bxl-linkedin bx-sm' ></i></a>
                </div>
                <span>or use your email for registration</span>
                <div class="validation-container">
                    <asp:TextBox runat="server" ID="txtName" placeholder="Name"></asp:TextBox>    
                    <span class="validation-message"> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the Name" ControlToValidate="txtName" ></asp:RequiredFieldValidator> </span>
                </div>
                 <div class="validation-container">
                    <asp:TextBox runat="server" ID="txtEmailSignUp" placeholder="Email"></asp:TextBox> 
                    <span class="validation-message"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the Email" ControlToValidate="txtEmailSignUp" ></asp:RequiredFieldValidator></span>
                    <span class="validation-message"><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter the Email" ControlToValidate="txtEmailSignUp"  ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$" ></asp:RegularExpressionValidator></span>
                </div>
                <div class="validation-container">
                    <asp:TextBox runat="server" ID="txtPasswordSignUp" TextMode="Password" placeholder="Password"></asp:TextBox>    
                    <span class="validation-message"> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter the Name" ControlToValidate="txtPasswordSignUp" ></asp:RequiredFieldValidator> </span>
                </div>
                
                <asp:Button runat="server" ID="btnSignUp" Text="Sign Up"  OnClick="btnSignUp_Click"/>
            </div>
    </form>
</body>
</html>
