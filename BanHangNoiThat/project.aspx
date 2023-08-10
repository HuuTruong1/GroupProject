<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="project.aspx.cs" Inherits="BanHangNoiThat.project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="projectStyle.css" rel="stylesheet" />

    <div class="container">
        <div class="project">
            <div class="clientInfo">
                <h2 class="title">Western Estate Gate</h2>
                <p class="desc">The model highly accurate original dimensions.</p>
                <div class="separate"></div>
                <div class="list-project">
                    <div class="project-detail">
                        <box-icon name='bed' color='#5d6886'></box-icon>
                        <p>3 BED ROOM</p>
                    </div>
                    <div class="project-detail">
                        <box-icon name='chair' color='#5d6886'></box-icon>
                        <p>1 LIVING ROOM</p>
                    </div>
                    <div class="project-detail">
                        <box-icon name='bath' color='#5d6886'></box-icon>
                        <p>2 BATH ROOM</p>
                    </div>
                    <div class="project-detail">
                        <box-icon name='bowl-hot' color='#5d6886'></box-icon>
                        <p>1 KETCHIN</p>
                    </div>
                </div>
                <p class="desc">The model also is in real world scale so you can presets inside 3dMax archive.</p>
                <a href="#!" class="btn">READ MORE
                <box-icon name='right-arrow-circle' color='#828fb0'></box-icon>
                </a>
            </div>
            <div class="thumb">
                <asp:Image ID="Image1" ImageUrl="~/img/project-1.jpg" runat="server" />
            </div>
        </div>
        <div class="project">
            <div class="clientInfo">
                <h2 class="title">Western Estate Gate</h2>
                <p class="desc">The model highly accurate original dimensions.</p>
                <div class="separate"></div>
                <div class="list-project">
                    <div class="project-detail">
                        <box-icon name='bed' color='#5d6886'></box-icon>
                        <p>3 BED ROOM</p>
                    </div>
                    <div class="project-detail">
                        <box-icon name='chair' color='#5d6886'></box-icon>
                        <p>1 LIVING ROOM</p>
                    </div>
                    <div class="project-detail">
                        <box-icon name='bath' color='#5d6886'></box-icon>
                        <p>2 BATH ROOM</p>
                    </div>
                    <div class="project-detail">
                        <box-icon name='bowl-hot' color='#5d6886'></box-icon>
                        <p>1 KETCHIN</p>
                    </div>
                </div>
                <p class="desc">The model also is in real world scale so you can presets inside 3dMax archive.</p>
                <a href="#!" class="btn">READ MORE
                <box-icon name='right-arrow-circle' color='#828fb0'></box-icon>
                </a>
            </div>
            <div class="thumb">
                <asp:Image ID="Image2" ImageUrl="~/img/project-2.jpg" runat="server" />
            </div>
        </div>
        <div class="project">
            <div class="clientInfo">
                <h2 class="title">Western Estate Gate</h2>
                <p class="desc">The model highly accurate original dimensions.</p>
                <div class="separate"></div>
                <div class="list-project">
                    <div class="project-detail">
                        <box-icon name='bed' color='#5d6886'></box-icon>
                        <p>3 BED ROOM</p>
                    </div>
                    <div class="project-detail">
                        <box-icon name='chair' color='#5d6886'></box-icon>
                        <p>1 LIVING ROOM</p>
                    </div>
                    <div class="project-detail">
                        <box-icon name='bath' color='#5d6886'></box-icon>
                        <p>2 BATH ROOM</p>
                    </div>
                    <div class="project-detail">
                        <box-icon name='bowl-hot' color='#5d6886'></box-icon>
                        <p>1 KETCHIN</p>
                    </div>
                </div>
                <p class="desc">The model also is in real world scale so you can presets inside 3dMax archive.</p>
                <a href="#!" class="btn">READ MORE
                <box-icon name='right-arrow-circle' color='#828fb0'></box-icon>
                </a>
            </div>
            <div class="thumb">
                <asp:Image ID="Image3" ImageUrl="~/img/project-3.jpg" runat="server" />
            </div>
        </div>
    </div>
    <div class="load-more">
        <a href="#!" class="btn">LOAD MORE
                <box-icon name='right-arrow-circle' color='#828fb0'></box-icon>
        </a>
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
</asp:Content>
