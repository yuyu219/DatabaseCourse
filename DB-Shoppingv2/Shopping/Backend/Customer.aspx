<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Shopping.Backend.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div style=" margin-left: 153px;font-family:'Microsoft JhengHei'; font-size:14px; height: 69px;" >
            <br />
            <b><font size="20">&nbsp;&nbsp;&nbsp; 顧客資料</font></b>
             <asp:Button ID="LogoutButton" runat="server" Text="登出" OnClick="LogoutButton_Click" style="margin-left: 19px" Width="75px" />
            <br />
            
            <table style= "height:80px; width:70%; margin-left: 81px; margin-top:43px;" rules="rows" frame ="below" cellpadding="5";>
                <tbody>
                  <tr>
		            <td align="center"; width="100">顧客編號</td>
		            <td align="center";  width="100">姓名</td>
                    <td align="center"; width="80">電話</td>
		            <td align="center"; width="300">地址</td>
		            <td align="center"; width="150">Email</td>
	              </tr>
                  <asp:Literal ID="li_showData" runat="server" />
                </tbody>
            </table>
            
            <br />
        </div>
        <div style="height: 456px; width: 152px; margin-right: 0px;">
            <input id="productedict" type="button" value="商品資料" style="font-size:14pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:150px; height:50px; background-color:rgb(80, 191, 42); font-weight: 200; color: #FFFFFF;" onclick="location.href = '/Backend/Products'" /><br />
            <br />
            <br />
            <input id="Customer" type="button" value="顧客資料" style="font-size:14pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:150px; height:50px; background-color:rgb(0, 139, 0); font-weight: 200; color: #FFFFFF;" onclick="location.href = '/Backend/Customer'" /><br />
            <br />
            <br />
            <input id="Record" type="button" value="訂單資訊" style="font-size:14pt; font-family:'Microsoft JhengHei'; border-color: inherit; border-width: 0; width:150px; height:50px; background-color:rgb(80, 191, 42); font-weight: 200; color: #FFFFFF;" onclick="location.href = '/Backend/Order'"/>
        </div>
    </form>
</body>
</html>