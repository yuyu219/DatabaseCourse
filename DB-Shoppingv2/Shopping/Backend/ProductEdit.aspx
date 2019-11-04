<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductEdit.aspx.cs" Inherits="Shopping.Backend.ProductEdit" %>

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
        .auto-style3 {
            width: 300px;
            height: 300px;
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
        <input id="AddButton" type="button" value="新增商品資料"; font-family:'Microsoft JhengHei'; onclick="location.href = '/Backend/AddProduct'"/>
        <asp:Button ID="LogoutButton" runat="server" Text="登出" OnClick="LogoutButton_Click" style="margin-right: 15px " Width="75px" />
    </div>
        <p class="ex1"  style="font-size:30pt;font-family:'DFKai-sb'; text-align:center;" >——商品資料——</p>
        <div>
            <table width="100%" class="ex3" style="font-size:20pt; font-family:'DFKai-sb'; text-align:center;" rules="rows" frame ="below" cellpadding="5">
                <tbody>
                <!--table style=" border:rgb(220, 220, 220); width: 55%; height: 80px; margin-left: 68px; margin-top: 39px;"rules="rows" cellpadding="5";-->
                <tr>
                    <td width="40%">商品編號</td>
		            <td style="text-align:left">
		                <asp:Label ID="ProIDLabel" runat="server"></asp:Label>
		            </td>
                </tr>
                <tr>
                    <td >商品名稱</td>
		            <td style="text-align:left">
		                <asp:TextBox ID="ProNameTextBox" runat="server"></asp:TextBox>
		            </td>
                </tr>
                 <tr>
                    <td >商品圖片</td>
		            <td style="text-align:left">
                        <asp:Literal ID="li_showPicture" runat="server" />
                        <asp:FileUpload ID="uploadFile" runat="server" />
		            </td>
                </tr>
               <tr>
                    <td >商品價格</td>
		            <td style="text-align:left">
		                <asp:TextBox ID="ProPriceTextBox" runat="server"></asp:TextBox>
		            </td>
                </tr>
                <tr>
                    <td >商品描述</td>
		            <td style="text-align:left">
		                <asp:TextBox ID="ProDesTextBox" runat="server" Columns="40" Height="174px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
            </tbody>
            </table>
            <div style="text-align:center; padding-top:10px">
                <asp:Button ID="CheckBtn" runat="server" Text="確定" onclick="CheckBtn_Click"  Width="54px" />
            </div>
        </div>
    </div>
</div>
</asp:Content>
