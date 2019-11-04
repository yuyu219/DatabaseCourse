<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TheNews.aspx.cs" Inherits="Shopping.Front.TheNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
div.ex2 {
    padding: 1cm 1cm 1cm 1cm;
}
p.ex1 {
    padding: 0cm 1cm 0cm 1cm;
}
tbody.ex3 {
    padding: 0cm 0cm 0cm 4cm;
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
            <input type="button" value="關於我們" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/AboutWe.aspx'">
            <input type="button" value="最新公告" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(21, 100, 38); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/TheNews.aspx'">
            <input type="button" value="購物說明" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/ShoppingStep.aspx'">
        </div>
    </div>
    <!-- row 3 --> 
    <div class="ex2" style="border-style:solid; background-color:lightgray; border-width:0px;">
        <p class="ex1"  style="font-size:30pt;font-family:'DFKai-sb'; text-align:center;" >——最新公告——</p>
        <table width="100%" class="ex3" border="1" style="font-size:30pt;font-family:'DFKai-sb'; text-align:center;" >
            <tbody>
                <tr>
                    <td>時間</td>
                    <td>顧客</td>
                    <td>商品</td>
                    <td>數量</td>
                </tr>
                <asp:Literal ID="news" runat="server" />
            </tbody>
        </table>
        
    </div>
</div>
</asp:Content>
