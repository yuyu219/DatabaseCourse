<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingStep.aspx.cs" Inherits="Shopping.Front.SoppingStep" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
div.ex3 {
    padding: 1cm 1cm 1cm 1cm;
}
p.ex1 {
    padding: 0cm 1cm 0cm 1cm;
}
p.ex2 {
    padding: 0.5cm 1cm 0cm 1cm;
}
img.ex4 {
    padding: 0.5cm 0cm 0cm cm;
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
            <input type="button" value="購物說明" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(21, 100, 38); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/ShoppingStep.aspx'">
        </div>
    </div>
    <!-- row 3 --> 
    <div class="ex3" style="border-style:solid; background-color:lightgray; border-width:0px;">
        <p class="ex1"  style="font-size:30pt;font-family:'DFKai-sb'; text-align:center;" >——購物說明——</p>
        <p class="ex2"  style="font-size:18pt;font-family:'DFKai-sb'; " >Step1：當你在產品清單(或首頁的廣告)看到自己想要的產品時，點擊圖片或文字(ex:紅框)</p>
            <p class="ex2"><img class="img-responsive"  style="width:70%; border-style:solid;border-width:1px;" src="/image/step1.png"></p>
            <p class="ex2"><img class="img-responsive"  style="width:70%; border-style:solid;border-width:1px;" src="/image/step1-2.png"></p>
        <p class="ex2"  style="font-size:18pt;font-family:'DFKai-sb'; " >Step2：會進入此項產品的詳細介紹，如果要購買的話，點擊右下角的前往購買(ex:紅框)</p>
            <p class="ex2"><img class="img-responsive"  style="width:70%; border-style:solid;border-width:1px;" src="/image/step2.png"></p>
        <p class="ex2"  style="font-size:18pt;font-family:'DFKai-sb'; " >Step3：填入資料後點擊送出</p>
            <p class="ex2"><img class="img-responsive"  style="width:70%; border-style:solid;border-width:1px;" src="/image/step2.png"></p>
    </div>
</div>
</asp:Content>
