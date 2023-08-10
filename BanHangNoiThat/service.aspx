<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="service.aspx.cs" Inherits="BanHangNoiThat.service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="serviceStyle.css" rel="stylesheet" />

    <div class="menu">
        <div class="card">
            <i class="fa-solid fa-cloud"></i>
            <h2>Architechture</h2>
            <p>A general term to describe building and other physical structures. The art and science of designing building & (some) nonbuilding structures</p>
        </div>
        <div class="card">
            <i class="fa-solid fa-house"></i>
            <h2>Urban Design</h2>
            <p>A general term to describe building and other physical structures. The art and science of designing building & (some) nonbuilding structures</p>
        </div>
        <div class="card">
            <i class="fa-solid fa-couch"></i>
            <h2>Interior Design</h2>
            <p>A general term to describe building and other physical structures. The art and science of designing building & (some) nonbuilding structures</p>
        </div>
        <div class="card">
            <i class="fa-regular fa-pen-to-square"></i>
            <h2>Plans and Projects</h2>
            <p>A general term to describe building and other physical structures. The art and science of designing building & (some) nonbuilding structures</p>
        </div>
        <div class="card">
            <i class="fa-solid fa-tree"></i>
            <h2>Decoration</h2>
            <p>A general term to describe building and other physical structures. The art and science of designing building & (some) nonbuilding structures</p>
        </div>
        <div class="card">
            <i class="fa-solid fa-signal"></i>
            <h2>Exterior</h2>
            <p>A general term to describe building and other physical structures. The art and science of designing building & (some) nonbuilding structures</p>
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
                        <box-icon name='bed' color='#5d6886' ></box-icon>
                        <p>3 BED ROOM</p>
                    </div>
                    <div class="furniture-detail">
                        <box-icon name='chair' color='#5d6886' ></box-icon>
                        <p>1 LIVING ROOM</p>
                    </div>
                    <div class="furniture-detail">
                        <box-icon name='bath' color='#5d6886' ></box-icon>
                        <p>2 BATH ROOM</p>
                    </div>
                    <div class="furniture-detail">
                        <box-icon name='bowl-hot' color='#5d6886' ></box-icon>
                        <p>1 KETCHIN</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
