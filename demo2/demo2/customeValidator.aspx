<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customeValidator.aspx.cs" Inherits="demo2.customeValidator" %>

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
            <h1>CUSTOME VALIDATOR </h1>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="nameValidator" runat="server" ControlToValidate="name" Display="Dynamic" ErrorMessage="name is requiredd" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="AGE"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="age" runat="server" ForeColor="Red"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ageValidator" runat="server" ControlToValidate="age" Display="Dynamic" ErrorMessage="age is mandatory" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="GENDER"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButton ID="f" runat="server" GroupName="genderGroup" Text="female" ValidationGroup="gender" />
                            <asp:RadioButton ID="m" runat="server" GroupName="genderGroup" Text="male" ValidationGroup="gender" />
                               
                            <asp:CustomValidator ID="genderValidator" runat="server" ErrorMessage="enter the gender" ForeColor="Red" OnServerValidate="genderValidator_ServerValidate" Display="Dynamic">*</asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="SUBMIT" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
