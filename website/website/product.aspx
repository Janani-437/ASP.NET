<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="website.product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<h1>ENTER THE PRODUCT DETAILS</h1>
    <table class="auto-style1">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="PRODUCT NAME"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="productName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="MANUFACTURER"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="manufacturer" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="DESCRIPITION"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="descripition" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="PRICE"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="price" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="SUBMIT" runat="server" OnClick="SUBMIT_Click" Text="SUBMIT" Width="290px" />
        </td>
        <td><a href="log1.aspx">HOME</a></td>
    </tr>
    </table>
            
        </div>
    </form>
</body>
</html>
