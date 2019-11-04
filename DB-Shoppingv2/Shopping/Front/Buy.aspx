<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="Shopping.shopping_process.WebForm2" %>
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
            <input type="button" value="最新公告" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/TheNews.aspx'">
            <input type="button" value="購物說明" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = '/Front/ShoppingStep.aspx'">
        </div>
        </div>
        <!-- row 3 --> 
    <div class="ex2" style="border-style:solid; background-color:lightgray; border-width:0px;">
        <p class="ex1"  style="font-size:30pt;font-family:'DFKai-sb'; text-align:center;" >——商品購買——</p>
        <div style="font-family:'Microsoft JhengHei'; font-size:16px;">
            <table width="100%" class="ex3" style="font-size:20pt; font-family:'DFKai-sb'; text-align:center;" rules="rows" frame ="below" cellpadding="5">
            <!--table style=" border:rgb(220, 220, 220); width: 50%; height: 424px; margin-left: 352px; margin-top: 39px;"rules="rows" cellpadding="5";-->
                <tbody>
                <tr>
                    <td width="40%">商品編號</td>
		            <td  style="text-align:left">
		                <asp:Label ID="ProIDLabe" runat="server"></asp:Label>
		            </td>
                </tr>
                <tr>
                    <td>商品名稱</td>
		            <td style="text-align:left">
		                <asp:Label ID="ProNameLabel" runat="server"></asp:Label>
		            </td>
                </tr>
                <tr>
                    <td>購買數量</td>
		            <td style="text-align:left">
		                <asp:TextBox ID="ProNumTextBox" runat="server"></asp:TextBox>
		            </td>
                </tr>
                <tr>
                    <td >運送方式</td>
		            <td style="text-align:left">
		                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem Value="item1">7-11</asp:ListItem>
                            <asp:ListItem Value="item2">全家</asp:ListItem>
                            <asp:ListItem Value="item3">宅配</asp:ListItem>
                        </asp:RadioButtonList>
		            </td>
                </tr>
                 <tr>
                    <td >您的姓名</td>
		            <td style="text-align:left">
		                <asp:TextBox ID="CusNameTextBox" runat="server"></asp:TextBox>
		            </td>
                </tr>
               <tr>
                    <td >手機號碼</td>
		            <td style="text-align:left">
		                <asp:TextBox ID="CusPhoneTextBox" runat="server"></asp:TextBox>
		            </td>
                </tr>
                <tr>
                    <td>地址</td>
		            <td style="text-align:left">
		                <asp:TextBox ID="AddressTextBox" runat="server" Width="295px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
		            <td style="text-align:left">
		                <asp:TextBox ID="EmailTextBox" runat="server" Width="295px"></asp:TextBox>
                    </td>
                </tr>
            </tbody>
            </table>
            <div style="text-align:center; margin-top: 20px" >
                <asp:Button ID="Button2" runat="server" Text="確定購買" Width="123px" OnClick="CheckButton_Click" Height="31px" />
            </div>
        </div>
    </div>
</div>
    
<!--script language="javascript" type="text/javascript">
// 不直接引用 html id，因為伺服器控制項對應的是 ClientID，而ClientID與控制項層次有關，不利程式碼移植
// 因此盡可能選擇直接傳遞物件，通過 DOM 獲取相關的父控制項和子控制項。
function CBL_SingleChoice(sender) 
{
    var container = sender.parentNode;        
    if(container.tagName.toUpperCase() == "TD") 
    { // table 布局，否則為span布局
        container = container.parentNode.parentNode; // 層次: <table><tr><td><input />
    }        
    var chkList = container.getElementsByTagName("input");
    var senderState = sender.checked;
    for(var i = 0; i < chkList.length; i++) 
    {
        chkList[i].checked = false;
    }     
    sender.checked = senderState;
}
</script-->
</asp:Content>
