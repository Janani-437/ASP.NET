<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="serviceProvider.aspx.cs" Inherits="test.serviceProvider" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 40px;
        }
        .auto-style3 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>SERVICE PROVIDER REGISTRATION </h1>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="nameRequried" runat="server" ControlToValidate="name" Display="Dynamic" ErrorMessage="NAME IS MANDATORY" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="EMAIL"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="emailRequried" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="EMAIL IS MANDATORY" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="emailValidator" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="INVALID EMAIL" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="PHONE"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="phoneRequried" runat="server" ControlToValidate="phone" Display="Dynamic" ErrorMessage="PHONE NUMBER IS MANDATORY" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label4" runat="server" Text="ADDRESS"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="address" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="addressValidator" runat="server" ControlToValidate="address" Display="Dynamic" ErrorMessage="ADDRESS IS REQURIED" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="LOCATION"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="location" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="locationRequried" runat="server" ControlToValidate="location" Display="Dynamic" ErrorMessage="LOCATION IS MANDATORY" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="ZIP CODE"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="zipCode" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="zipRequried" runat="server" ControlToValidate="zipCode" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="zipCodeValidator" runat="server" ControlToValidate="zipCode" Display="Dynamic" ErrorMessage="INVALID ZIP CODE" ForeColor="Red" ValidateRequestMode="Disabled" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label7" runat="server" Text="CITY"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="city" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="cityRequried" runat="server" ControlToValidate="city" Display="Dynamic" ErrorMessage="CITY IS MANDATORY" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="SERVICE TYPE"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="select" runat="server">
                                <asp:ListItem>Electronics</asp:ListItem>
                                <asp:ListItem>Electrical</asp:ListItem>
                                <asp:ListItem>HomeAppliances</asp:ListItem>
                                <asp:ListItem>Software</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="serviceRequried" runat="server" ControlToValidate="select" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="submit" runat="server" Text="SUBMIT" Width="338px" OnClick="submit_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            
        </div>
    </form>
</body>
</html>
