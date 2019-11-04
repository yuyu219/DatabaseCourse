<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Shopping.Backend.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
div.ex2 {
    padding: 0cm 1cm 1cm 1cm;
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
    <div class="row" style="text-align:center;background-color:rgb(80, 191, 42)">
        <div class="col-md-12">
            <input id="productedict" type="button" value="商品資料" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Backend/Products.aspx'">
            <input id="Customer" type="button" value="顧客資料" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Backend/Customer.aspx'">
            <input id="Record" type="button" value="訂單資訊" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Backend/Order.aspx'">
        </div>
    </div>
    <!-- row 2 --> 
    <div class="ex2" style="border-style:solid; background-color:lightgray; border-width:0px;">
    <div style="text-align:right; padding-top:10px">
        <asp:Button ID="LogoutButton" runat="server" Text="登出" OnClick="LogoutButton_Click" style="margin-right: 15px " Width="75px" />
    </div>
        <p class="ex1"  style="font-size:30pt;font-family:'DFKai-sb'; text-align:center;" >——顧客資料——</p>
        <div>
            <table width="100%" style="font-size:20pt; font-family:'DFKai-sb'; text-align:center;" rules="rows" frame ="below" cellpadding="5">
                <tbody class="ex3">
                  <tr>
		            <td align="center"; width="15%">顧客編號</td>
		            <td align="center";  width="10%">姓名</td>
                    <td align="center"; width="15%">電話</td>
		            <td align="center"; width="30%">地址</td>
		            <td align="center"; width="30%">Email</td>
	              </tr>
                  <asp:Literal ID="li_showData" runat="server" />
                </tbody>
            </table>
            
        </div>
    </div>
</div>
</asp:Content>