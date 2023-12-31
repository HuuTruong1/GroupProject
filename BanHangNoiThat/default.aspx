﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BanHangNoiThat._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Woodi</title>
    <link href="style.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <div class="container">
                <div class="top-menu">
                    <div class="logo">
                        <asp:Image ID="logoImg" ImageUrl="~/img/logo.png" runat="server" />
                    </div>
                    <div class="navbar">
                        <asp:HyperLink ID="HyperLink1" runat="server">Home</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink3" runat="server">Service</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink4" runat="server">Project</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink5" runat="server">Contact</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink6" runat="server">About</asp:HyperLink>
                    </div>
                </div>
                <div class="bottom-menu">
                    <div class="searching">
                        <input id="txtSearch" type="text" placeholder="Nhập sản phẩm cần tìm..." />
                        <div class="icon-search">
                            <box-icon name='search-alt'></box-icon>
                        </div>
                    </div>
                    <div class="clientInfo">
                        <div class="avatar">
                            <asp:Image ID="avaImg" ImageUrl="~/img/avatar-1.jpg" runat="server" />
                        </div>
                        <span>levana123z</span>
                    </div>

                    <a href="#!" class="cart">
                        <box-icon color='#ffffff' name='cart-alt'></box-icon>
                    </a>
                </div>
            </div>
        </header>

        <div class="body-content">
            <div class="container">
                <p>This is main content!</p>
            </div>
        </div>

        <footer>
            <div class="container">
                <div class="footer--email">
                    <input id="txtEmail" type="text" placeholder="email address..." />
                    <div class="btnSubmit">
                        SUBCRIBE
                        <box-icon name='right-arrow-circle' color='#828fb0'></box-icon>
                    </div>
                </div>
                <div class="footer--copyright">
                    <div class="logo">
                        <asp:Image ID="Image1" ImageUrl="~/img/logo.png" runat="server" />
                    </div>
                    <div class="copyright">
                        All rights reserved to
                        <strong>#Group4-IS_385SE</strong>
                        2023.
                    </div>
                    <div class="social-links">
                        <a href="#!" class="icon">
                            <box-icon name='twitter' type='logo' color='#828fb0'></box-icon>
                        </a>
                        <a href="#!" class="icon">
                            <box-icon name='instagram-alt' type='logo' color='#828fb0'></box-icon>
                        </a>
                        <a href="#!" class="icon">
                            <box-icon name='facebook-circle' type='logo' color='#828fb0'></box-icon>
                        </a>
                    </div>
                </div>
            </div>
        </footer>
    </form>
    <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
</body>
</html>
