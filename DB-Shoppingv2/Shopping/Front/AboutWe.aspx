<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutWe.aspx.cs" Inherits="Shopping.Front.AboutWe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
div.ex2 {
    padding: 1cm 1cm 1cm 1cm;
}
p.ex1 {
    padding: 0cm 1cm 0cm 1cm;
}
</style>
<div class="container body-content">
    <!-- row 1 --> 
     <div class="row" style="text-align:left;background-color:white;">
        <img class="img-responsive"  style="width:20%" src="/image/baby.jpg" onclick="location.href='/Default.aspx'">
    </div>
    <!-- row 2 --> 
    <div class="row" style="text-align:center;background-color:rgb(80, 191, 42)">
        <div class="col-md-12">
            <input type="button" value="所有產品" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/ShowProduct.aspx'">
            <input type="button" value="關於我們" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(21, 100, 38); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/AboutWe.aspx'">
            <input type="button" value="最新公告" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/TheNews.aspx'">
            <input type="button" value="購物說明" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/ShoppingStep.aspx'">
        </div>
    </div>
    <!-- row 3 --> 
        <div class="ex2" style="border-style:solid; background-color:lightgray; border-width:0px;">
            <p class="ex1"  style="font-size:30pt;font-family:'DFKai-sb'; text-align:center;" >——資料庫系統設計之期末報告——</p>
            <p class="ex1"  style="font-size:20pt;font-family:'DFKai-sb'; " >&nbsp;&nbsp;&nbsp;&nbsp;此網站可於前台進行觀看商品清單、最新商品並且可以不登入的方式下訂單，進行購買商品的動作。此外可藉由登入的方式進入後台進行商品、清單跟顧客的資料管裡，並可新增、刪除、修改等動作。</p>
            <p class="ex1"  style="font-size:16pt;font-family:'DFKai-sb'; text-align:right">學生:曾ＯＯ、余ＯＯ、陳ＯＯ</p> 
            <p class="ex1"  style="font-size:16pt;font-family:'DFKai-sb'; text-align:right">指導老師:陳ＯＯ老師</p> 
        </div>
    </div>
</asp:Content>
