<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="BanHangNoiThat.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="aboutStyle.css" rel="stylesheet" />

    <div class="introduce">
        <div class="info">
            <h2 class="title">A small efficient
                <br />
                interior design team.</h2>
            <p class="desc">
                nteshape is a team of highly talented, experienced, and architects and designers. Our company has been the leading provider of architecture services to clients through out the USA since May 1999.
            </p>
            <a href="#!" class="btnContact">CONTACT
                <box-icon name='right-arrow-circle' color='#828fb0'></box-icon>
            </a>
        </div>
        <div class="thumb">
            <asp:Image ID="aboutImg" runat="server" ImageUrl="~/img/about.png" />
            <div class="icon">
                <box-icon name='play' color='#ffffff' ></box-icon>
            </div>
        </div>
    </div>

    <div class="experience">
        <h2 class="title">24 Years Experience</h2>
        <div class="stats">
            <div class="item">
                EXPERIENCE
                <span>24</span>
            </div>
            <div class="item">
                PROJECTS
                <span>470</span>
            </div>
            <div class="item">
                AWARD
                <span>75+</span>
            </div>
            <div class="item">
                FOLLOWERS
                <span>3K</span>
            </div>
        </div>
    </div>

    <div class="featured">
        <div class="info">
            <div class="title">
                Featured
            </div>
            <span>POPERTIES</span>
            <p class="desc">This dining chair is UV mapped so you can use your own texture. The model also is in real world scale so you can drop it into any environment and with 3 fabric material presets inside 3dMax archive.</p>
            <a href="#!" class="btnExplore">EXPLORE
                <box-icon name='right-arrow-circle' color='#828fb0'></box-icon>
            </a>
        </div>
        <div class="right">
            <div class="project-example">
                <h4>Western Estate Gate</h4>
                <p>The model is highly accurate original dimensions.</p>
                <div class="separate"></div>
                <p class="price">$795,00</p>
                <div class="furniture">
                    <div class="furniture-detail">
                        <box-icon name='bed' color='#5d6886'></box-icon>
                        <p>3 BED ROOM</p>
                    </div>
                    <div class="furniture-detail">
                        <box-icon name='chair' color='#5d6886'></box-icon>
                        <p>1 LIVING ROOM</p>
                    </div>
                    <div class="furniture-detail">
                        <box-icon name='bath' color='#5d6886'></box-icon>
                        <p>2 BATH ROOM</p>
                    </div>
                    <div class="furniture-detail">
                        <box-icon name='bowl-hot' color='#5d6886'></box-icon>
                        <p>1 KETCHIN</p>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
