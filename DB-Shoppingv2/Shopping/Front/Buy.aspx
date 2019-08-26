<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="Shopping.shopping_process.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 1188px">
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
                <input type="button" value="關於我們" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = 'http://www.ncyu.edu.tw/'">
                <input type="button" value="最新公告" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = 'http://www.ncyu.edu.tw/'">
                <input type="button" value="購物說明" style="font-size:20pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:250px; height:80px; background-color:rgb(80, 191, 42); font-weight: 700; color: #FFFFFF;" onclick="location.href = 'http://www.ncyu.edu.tw/'">
            </div>
        </div>
    </div>
    <form id="form1" runat="server">
    <div>
    <div style="font-family:'Microsoft JhengHei'; font-size:16px;">
        <table style=" border:rgb(220, 220, 220); width: 50%; height: 424px; margin-left: 352px; margin-top: 39px;"rules="rows" cellpadding="5";>
                <tr>
                    <td align="right"; class="auto-style1">商品編號&nbsp;</td>
		            <td align="left"; class="auto-style2">
		                <asp:Label ID="ProIDLabe" runat="server"></asp:Label>
		            </td>
                </tr>
                <tr>
                    <td align="right"; class="auto-style1">商品名稱&nbsp;</td>
		            <td align="left"; class="auto-style2">
		                &nbsp;<asp:Label ID="ProNameLabel" runat="server"></asp:Label>
		            </td>
                </tr>
                <tr>
                    <td align="right"; class="auto-style1">購買數量&nbsp;</td>
		            <td align="left"; class="auto-style2">
		                &nbsp;<asp:TextBox ID="ProNumTextBox" runat="server"></asp:TextBox>
		            </td>
                </tr>
                <tr>
                    <td align="right"; class="auto-style1">運送方式&nbsp;</td>
		            <td align="left"; class="auto-style2">
		                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                            <asp:ListItem>7-11</asp:ListItem>
                            <asp:ListItem>全家</asp:ListItem>
                            <asp:ListItem>宅配</asp:ListItem>
                        </asp:CheckBoxList>
		            </td>
                </tr>
                 <tr>
                    <td align="right"; class="auto-style1">您的姓名&nbsp;</td>
		            <td align="left"; class="auto-style3">
		                &nbsp;<asp:TextBox ID="CusNameTextBox" runat="server"></asp:TextBox>
		            </td>
                </tr>
               <tr>
                    <td align="right"; class="auto-style1">手機號碼&nbsp;</td>
		            <td align="left"; class="auto-style2">
		                &nbsp;<asp:TextBox ID="CusPhoneTextBox" runat="server"></asp:TextBox>
		            </td>
                </tr>
                <tr>
                    <td align="right"; class="auto-style1">地址&nbsp;</td>
		            <td align="left"; class="auto-style2">
		                &nbsp;<asp:TextBox ID="AddressTextBox" runat="server" Width="295px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right"; class="auto-style1">Email&nbsp;</td>
		            <td align="left"; class="auto-style2">
		                &nbsp;<asp:TextBox ID="EmailTextBox" runat="server" Width="218px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button2" runat="server" Text="確定購買" Width="123px" OnClick="CheckButton_Click" Height="31px" style="margin-left: 974px; margin-top: 20px" />
        </div>
    </div>
    </form>
</body>
</html>
