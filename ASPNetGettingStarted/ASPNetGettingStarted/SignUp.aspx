<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ASPNetGettingStarted.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="border-style: 3;">SIGN UP FORM </h1>
    <table class="nav-justified">
        <tr>
            <td style="width: 252px; height: 20px">
                <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="NAME IS MANDATORY" ForeColor="#FF3300" ControlToValidate="name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 252px; height: 22px;">
                <asp:Label ID="Label2" runat="server" Text="EMAIL"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="EMAIL IS MANDATORY" ControlToValidate="email" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ErrorMessage="INVALID EMAIL" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 252px">
                <asp:Label ID="Label4" runat="server" Text="MOBILE"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="MOBILE IS MANDATORY" ControlToValidate="mobile" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mobile" Display="Dynamic" ErrorMessage="mobile number not in format" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 252px; height: 25px;">
                <asp:Label ID="Label5" runat="server" Text="DOB"></asp:Label>
            </td>
            <td style="height: 25px">
                <asp:TextBox id='DOB' runat="server" type='date' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DOB" Display="Dynamic" ErrorMessage="date of birth required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 252px">
                <asp:Label ID="Label6" runat="server" Text="GENDER"></asp:Label>
            </td>
            <td></asp:TextBox>
                <asp:RadioButton ID="female" runat="server" Text="FEMALE"  GroupName="gender"/>
                <asp:RadioButton ID="male" runat="server" Text="MALE" GroupName="gender"/>
            </td>
               //&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 252px">
                <asp:Label ID="Label7" runat="server" Text="QUALIFICATION"></asp:Label>
            </td>
            <td><asp:Panel runat="server" ID="c">
                <asp:CheckBox ID="UG" runat="server" Text="UG" />
                <asp:CheckBox ID="PG" runat="server" Text="PG" />
                <asp:CheckBox ID="OTHERS" runat="server" Text="OTHERS" OnCheckedChanged="OTHERS_CheckedChanged" />
            </asp:Panel>

            </td>
        </tr>
        <tr>
            <td style="width: 252px; height: 20px;">
                <asp:Label ID="Label8" runat="server" Text="LOCATION"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:Panel runat="server" ID="CheckBox1">
                    <asp:DropDownList id="select" runat="server" style="margin-bottom: 0">
                        <asp:ListItem>BENGALURU</asp:ListItem>
                        <asp:ListItem>MYSORE</asp:ListItem>
                        <asp:ListItem>HYDERBAD</asp:ListItem>
                        <asp:ListItem>TAMIL NADU</asp:ListItem>
                        <asp:ListItem>ANDARA PRADESH</asp:ListItem>
                    </asp:DropDownList>
                    </asp:Panel>
            </td>
        </tr>
        <tr>
            <td style="width: 252px; height: 22px">
                <asp:Label ID="Label3" runat="server" Text="PASSWORD"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="PASSWORD IS MANDATORY" ControlToValidate="password" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 252px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 252px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" Width="183px" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="RESET" Width="137px" />
            </td>
        </tr>
        <tr>
            <td style="width: 252px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p style="height: 22px"> &nbsp;</p>
</asp:Content>
