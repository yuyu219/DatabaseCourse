<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowProduct.aspx.cs" Inherits="Shopping.Front.ShowProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
div.ex1 {
    padding: 0.5cm 0.5cm 0cm 0.5cm;
}
p.ex1 {
    padding: 0.5cm 1cm 0cm 1cm;
}
</style>
<head>
   <title>Bootstrap 实例 - 分页的状态</title>
   <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <script src="/scripts/jquery.min.js"></script>
   <script src="/bootstrap/js/bootstrap.min.js"></script>
</head>
<div class="container body-content">
    <!-- row 1 --> 
     <div class="row" style="text-align:left;background-color:white;">
        <img class="img-responsive"  style="width:25%" src="/image/baby.jpg" onclick="location.href='/Front/IndexPage.aspx'">
    </div>
    <!-- row 2 --> 
    <div class="row" style="text-align:center;background-color:rgb(80, 191, 42)">
        <div class="col-md-12">
            <input type="button" value="所有產品" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(21, 100, 38); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/ShowProduct.aspx'">
            <input type="button" value="關於我們" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/AboutWe.aspx'">
            <input type="button" value="最新公告" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/TheNews.aspx'">
            <input type="button" value="購物說明" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/ShoppingStep.aspx'">
        </div>
    </div>
    <div class="ex2" style="">
            <p class="ex1"  style="font-size:30pt;font-family:'DFKai-sb';text-align:center;" >——商品清單——</p>
    </div>
        <!-- row 3 --> 
     <div class="row btn-group btn-group-vertical " style="text-align:left;"> 
        <div class="row ex1" style="height:1300px; ">
            <asp:Literal ID="indexitem" runat="server" />
        </div>
    </div>
    <!-- row 4 --> 
    <!--<ul class="pagination">
        <li><a href="#">&laquo;</a></li>
        <li class="active"><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">&raquo;</a></li>
    </ul>-->
</div>
</asp:Content>
