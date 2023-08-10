<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="BanHangNoiThat.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="contactStyle.css" rel="stylesheet" />

    <div class="body">
        <div class="introduce">
            <h3 class="title">Say Hello, On Our Support</h3>
            <p class="desc">The model is highly accurate original dimensions.</p>
            <div class="separate"></div>
            <p class="desc">This dining chair is UV mapped so you can use your own texture. The model also is in real world scale so you can drop it into any environment and with 3 fabric material presets inside 3dMax archive.</p>
            <div class="social-links">
                <a href="#!" class="icon">
                    <box-icon name='twitter' type='logo' color='#00afe9'></box-icon>
                </a>
                <a href="#!" class="icon">
                    <box-icon name='facebook-circle' type='logo' color='#3b5998'></box-icon>
                </a>
                <a href="#!" class="icon">
                    <box-icon name='instagram-alt' type='logo' color='#007ab9'></box-icon>
                </a>
            </div>
        </div>

        <div class="input-contact">
            <div class="input">
                <input id="txtName" type="text" placeholder="FULL NAME" />
                <div class="icon-input">
                    <box-icon name='contact' type='solid' color='#f39176'></box-icon>
                </div>
            </div>
            <div class="input">
                <input id="txtEmail" type="text" placeholder="EMAIL ADDRESS" />
                <div class="icon-input">
                    <box-icon name='envelope' color='#f39176'></box-icon>
                </div>
            </div>
            <div class="input">
                <input id="txtSub" type="text" placeholder="SUBJECTS" />
                <div class="icon-input">
                    <box-icon name='check-square' color='#f39176'></box-icon>
                </div>
            </div>
            <div class="input">
                <textarea id="txtMessage" placeholder="MESSAGE"></textarea>
                <div class="icon-input">
                    <box-icon name='message-alt-edit' color='#f39176'></box-icon>
                </div>
            </div>

            <a href="#!" class="btnSend">
                SEND YOUR MESSAGE NOW
                <box-icon name='right-arrow-circle' color='#828fb0'></box-icon>
            </a>
        </div>
    </div>
    <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
</asp:Content>
