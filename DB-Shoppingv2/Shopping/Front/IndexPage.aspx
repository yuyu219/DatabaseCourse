<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IndexPage.aspx.cs" Inherits="Shopping.IndexPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
div.ex1 {
    padding: 0.5cm 0.5cm 0cm 0.5cm;
}
div.ex2 {
    padding: 0.5cm 30% 0.5cm 30%;
}
</style>
<div class="container body-content">
    <!-- row 1 --> 
     <div class="row" style="text-align:left;background-color:white;">
        <img class="img-responsive"  style="width:25%" src="/image/baby.jpg" onclick="location.href='/Front/IndexPage.aspx'">
    </div>
    <!-- row 2 --> 
    <div class="row" style="text-align:center;background-color:rgb(80, 191, 42)">
        <div class="col-md-12">
            <input type="button" value="所有產品" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/ShowProduct.aspx'">
            <input type="button" value="關於我們" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/AboutWe.aspx'">
            <input type="button" value="最新公告" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/TheNews.aspx'">
            <input type="button" value="購物說明" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/ShoppingStep.aspx'">
        </div>
    </div>
        <!-- row 3 --> 
        <div class="row"> 
                <div> 
                    <div id="myCarousel" class="carousel slide"> 
                        <!-- Indicators --> 
                        <ol class="carousel-indicators"> 
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li> 
                            <li data-target="#myCarousel" data-slide-to="1"></li> 
                            <li data-target="#myCarousel" data-slide-to="2"></li> 
                        </ol> 
                        <div class="carousel-inner"> 
                <asp:Literal ID="turn1" runat="server" />
                        </div> 
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
                        <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
                    </div> 
                </div> 
            </div> 
    <!-- row 4 --> 
    <div class="row" style="background-color:darkgreen"> 
        <div class="col-lg-12" style="color: #FFFFFF"> 
            <h1>最新產品</h1> 
        </div> 
     </div>
    <!-- row 5 --> 
     <div class="row btn-group btn-group-vertical ex1" style="text-align:left; "> 
        <div class="row" style="height:1000px; ">
            <asp:Literal ID="indexitem" runat="server" />
        </div>
    </div>
</div>
<script language="javascript">    function loadTab(obj) {
        //將 Tab 標籤樣式設成 Blur 型態
        var tabsF = document.getElementById('tabsF').getElementsByTagName('li');
        for (var i = 0; i < tabsF.length; i++) {
            tabsF[i].setAttribute('id', null);
        }

        //變更分頁標題樣式
        obj.parentNode.setAttribute('id', 'current');

    }</script>
</asp:Content>
