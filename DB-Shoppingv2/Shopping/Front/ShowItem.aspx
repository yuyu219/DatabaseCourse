<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowItem.aspx.cs" Inherits="Shopping.Front.ShowItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
p.ex1 {
    padding: 1cm 3cm 1cm 1.2cm;
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
            <input type="button" value="關於我們" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = 'http://www.ncyu.edu.tw/'">
            <input type="button" value="最新公告" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = 'http://www.ncyu.edu.tw/'">
            <input type="button" value="購物說明" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = 'http://www.ncyu.edu.tw/'">
        </div>
    </div>
        <!-- row 3 --> 
    <div class="row" style="height:800px; border-style:solid; border-color:white; border-width:10px;"> 
        <div class="row" style="height:800px; border-style:solid; border-color:lightgray; border-width:1px; background-color:lightgray">
            <asp:Literal ID="itemdetail" runat="server" />
        </div>
    </div>
</div>
</asp:Content>
