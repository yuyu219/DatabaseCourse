<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Shopping.Backend.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
p.ex1 {
    padding: 0.5cm 1cm 0cm 1cm;
}
</style>
<div class="container body-content" align="center">
        <div style=" align=center; font-family:'Microsoft JhengHei'; font-size:14px; height: 330px; ">
            <div class="ex2" style="">
                    <p class="ex1"  style="font-size:30pt;font-family:'DFKai-sb';text-align:center;" >——管理者登入——</p>
            </div>
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
</asp:Content>