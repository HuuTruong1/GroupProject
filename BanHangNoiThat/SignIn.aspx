<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="BanHangNoiThat.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="SignIn.css" rel="stylesheet" />
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
                        <p>Please log in to enjoy shopping</p>
                    </div>
                </div>
            </div>
            <div class="sign-in-container">
                <h1>Sign in</h1>
                <div class="social-container">
                   <a href="#" class="social"><i class='bx bxl-facebook-circle bx-sm' ></i></a>
                    <a href="#" class="social"><i class='bx bxl-google bx-sm' ></i></a>
                    <a href="#" class="social"><i class='bx bxl-linkedin bx-sm' ></i></a>
                </div>
                <span>or use your account</span>
                <div class="validation-container">
                    <asp:TextBox runat="server" ID="txtEmailSignIn" placeholder="Email"></asp:TextBox>         
                    <span class="validation-message"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the Email" ControlToValidate="txtEmailSignIn" ></asp:RequiredFieldValidator></span>
                    <span class="validation-message"><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter the Email" ControlToValidate="txtEmailSignIn"  ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$" ></asp:RegularExpressionValidator></span>
                </div>

                <div class="validation-container">
                    <asp:TextBox runat="server" ID="txtPasswordSignIn" TextMode="Password" placeholder="Password"></asp:TextBox>    
                    <span class="validation-message"> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the Password" ControlToValidate="txtPasswordSignIn" ></asp:RequiredFieldValidator> </span>
                </div>
                <a href="#">Forgot your password?</a>
                <asp:Label ID="lblMessage" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                <asp:Button runat="server" ID="btnSignIn" Text="Sign In" OnClick="btnSignIn_Click" />
            </div>
        </div>
    </form>

</body>
</html>
