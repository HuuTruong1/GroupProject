<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="detailProduct.aspx.cs" Inherits="BanHangNoiThat.detailProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="detailProductStyle.css" rel="stylesheet" />
    <!-- Add the custom class to the body element -->
    <div class="detail-product">
        <asp:DataList ID="DataList" runat="server">
            <ItemTemplate>
                <div class="product">
                    <img class='product-image' src='<%# "/img/" + Eval("Product_Image") %>'>
                    <div class="product-info">
                        <h2 class="title"><%# Eval("Product_name") %></h2>
                        <p class="description">Details: <%# Eval("Product_description") %></p>
                        <span class="price">Price: <%# Eval("Product_price", "{0:0.0}") %> $</span>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>


</asp:Content>

