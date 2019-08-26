<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Shopping.BackProductsInput" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Button1 {
            margin-left: 43px;
            margin-top: 0px;
            padding-left: 0px;
        }
        #AddButton {
            height: 28px;
            margin-left: 84px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div style=" margin-left: 153px;font-family:'Microsoft JhengHei'; font-size:14px; width:100%; height: 69px;" >
            <br />
            <b><font size="20">&nbsp;&nbsp;&nbsp; 商品資料</font></b>
             <asp:Button ID="LogoutButton" runat="server" Text="登出" OnClick="LogoutButton_Click" style="margin-left: 19px" Width="75px" />
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            
             <input id="AddButton" type="button" value="新增商品資料"; font-family:'Microsoft JhengHei'; onclick="location.href = '/Backend/AddProduct'"/>
             <table style="width:70%; margin-left: 81px; margin-top: 18px;"rules="rows" frame ="below" cellpadding="5";>
                <tbody>
                   <tr>
		            <td align="center"; width="80">商品編號</td>
		            <td align="center";  width="80">名稱</td>
                    <td align="center"; width="80">圖片</td>
		            <td align="center"; width="100">價格</td>
                    <td align="center"; width="200">描述</td>
                    <td align="center"; width="80"></td>
	              </tr>
                  <asp:Literal ID="li_showData" runat="server" />
                </tbody>
            </table>
            
            <br />
        </div>
        <div style="height: 214px; width: 148px">
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
