<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="RegistrationsAndLogin.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <h1>Home Page</h1>
        <div>
            <asp:Button ID="logout" runat="server" Text="LOGOUT" OnClick="logout_Click" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Display Users" />
       </div>
       
    </form>
</body>
</html>
