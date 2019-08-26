<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Shopping.Backend.InputProduct" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .auto-style1 {
            width: 60px;
        }
        #TextArea1 {
            height: 74px;
        }
        #producedes {
            height: 176px;
        }
        .auto-style2 {
            width: 80px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <br/>
        <div style=" margin-left: 153px;font-family:'Microsoft JhengHei'; font-size:16px; height: 69px;" >
            <b><font size="20">&nbsp;&nbsp; 新增上架商品</font></b>
             <asp:Button ID="LogoutButton" runat="server" Text="登出" OnClick="LogoutButton_Click" style="margin-left: 19px" Width="75px" />
            <table style=" border:rgb(220, 220, 220); width: 55%; height: 80px; margin-left: 68px; margin-top: 39px;"rules="rows" cellpadding="5";>
                <tr>
                    <td align="right"; class="auto-style1">商品編號&nbsp;</td>
		            <td align="left"; class="auto-style2">
		                &nbsp;<asp:TextBox ID="ProIDTextBox" runat="server"></asp:TextBox>
		            </td>
                </tr>
                <tr>
                    <td align="right"; class="auto-style1">商品名稱&nbsp;</td>
		            <td align="left"; class="auto-style2">
		                &nbsp;<asp:TextBox ID="ProNameTextBox" runat="server"></asp:TextBox>
		            </td>
                </tr>
                 <tr>
                    <td align="right"; class="auto-style1">商品圖片&nbsp;</td>
		            <td align="left"; class="auto-style2">
                        <asp:FileUpload ID="uploadFile" runat="server" />
		            </td>
                </tr>
               <tr>
                    <td align="right"; class="auto-style1">商品價格&nbsp;</td>
		            <td align="left"; class="auto-style2">
		                &nbsp;<asp:TextBox ID="ProPriceTextBox" runat="server"></asp:TextBox>
		            </td>
                </tr>
                <tr>
                    <td align="right"; class="auto-style1">商品描述&nbsp;</td>
		            <td align="left"; class="auto-style2">
		                <asp:TextBox ID="ProDesTextBox" runat="server" Columns="40" Height="174px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="AddBtn" runat="server" Text="新增" onclick="AddBtn_Click" style="margin-left: 102px" Width="54px" />
        </div>
        <div style="height: 456px; width: 152px; margin-right: 0px; margin-top: 0px;">
            <input id="productedict" type="button" value="商品資料" style="font-size:14pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:150px; height:50px; background-color:rgb(0, 139, 0); font-weight: 200; color: #FFFFFF;" onclick="location.href = '/Backend/Products'"/><br />
            <br />
            <br />
            <input id="Customer" type="button" value="顧客資料" style="font-size:14pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:150px; height:50px; background-color:rgb(80, 191, 42); font-weight: 200; color: #FFFFFF;" onclick="location.href = '/Backend/Customer'" /><br />
            <br />
            <br />
            <input id="Record" type="button" value="訂單資訊" style="font-size:14pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:150px; height:50px; background-color:rgb(80, 191, 42); font-weight: 200; color: #FFFFFF;" onclick="location.href = '/Backend/Order'"/>
        </div>
     </form>
</body>
</html>