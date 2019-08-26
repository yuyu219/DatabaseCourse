<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Shopping.Backend.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div style=" align=center; font-family:'Microsoft JhengHei'; font-size:14px; height: 330px; ">
            <b><font size="20">後台登入</font></b>
            <br />
            <table style=" border:rgb(220, 220, 220); width: 25%; height: 30%; margin-left: 0px; margin-top: 39px;"cellpadding="5";>
                <tr>
                    <td align="right"; class="auto-style1">帳號&nbsp;</td>
		            <td align="left"; class="auto-style2">
		                &nbsp;<asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
		            </td>
                </tr>
                <tr>
                    <td align="right"; class="auto-style1">密碼&nbsp;</td>
		            <td align="left"; class="auto-style2">
		                &nbsp;<asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
		            </td>
            </table>
            <asp:Button ID="LoginBtn" runat="server" Height="28px" style="margin-left: 165px; margin-top: 13px" Text="登入" Width="67px" OnClick="LoginBtn_Click" />
        </div>
    
    </div>
    </form>
</body>
</html>
