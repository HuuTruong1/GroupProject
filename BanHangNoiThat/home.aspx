<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="BanHangNoiThat.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <link href="homeStyle.css" rel="stylesheet" />

    <div class="categories">
        <h2 class="title">Categories</h2>
        <asp:DataList ID="DataList" runat="server" CellPadding="20" CellSpacing="20" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" GridLines="Horizontal" HorizontalAlign="Center" RepeatColumns="6" RepeatDirection="Horizontal" RepeatLayout="Flow" ShowFooter="False" ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton" runat="server" Text='<%# Eval("Category_name") %>'
                    CommandArgument='<%# Eval("Category_Id") %>' OnClick="CategoryButton_Click"></asp:LinkButton>
            </ItemTemplate>
        </asp:DataList>
    </div>

    <div class="list-product">
        <asp:DataList ID="productDataList" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
            <ItemTemplate>
                <asp:LinkButton ID="linkButton" runat="server" CommandArgument='<%# Eval("Product_Id") %>' OnClick="linkButton_Click">
                    <div class='product-box'>
                        <img class='product-image' src='<%# "/img/" + Eval("Product_Image") %>'>
                        <div class='product-info'>
                            <div class='product-name'><%# Eval("Product_name") %></div>
                            <div class='product-description'><%# Eval("Product_description") %></div>
                            <div class='product-price'>$ <%# Eval("Product_price") %></div>
                        </div>
                    </div>
                </asp:LinkButton>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
