<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log1.aspx.cs" Inherits="website.log1" %>

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
            <h1>lOGIN WITH EMAIL AND PASSWORD</h1>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="EMAIL"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="SUBMIT" Width="227px" />
                    </td>
                    <td><a href="Registration.aspx">Not Registered yet ? Click Here</a></td>
                </tr>
                </table>
            
        </div>
    </form>
</body>
</html>
