<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newCutomeValidation.aspx.cs" Inherits="demo2.newCutomeValidation" %>

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
            <h2>example 2 of Custome validation</h2>
        </div>
        <table class="auto-style1">
            <tr>
                <td>ENTER EVEN NUMBER </td>
                <td>
                    <asp:TextBox ID="number" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="number" Display="Dynamic" ErrorMessage="plz enter the number" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="number" Display="Dynamic" ErrorMessage="enter even numbers only " ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="submit" runat="server" Text="submit" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
