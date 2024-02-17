<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="afterLogin.aspx.cs" Inherits="website.afterLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 76px;
        }
        .auto-style4 {
            width: 55px;
        }
        .auto-style5 {
            width: 87px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            width: 124px;
        }
        .auto-style8 {
            width: 114px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2><center>WELCOME</center>&nbsp;</h2></div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="home" runat="server" OnClick="home_Click" Text="HOME" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="addProduct" runat="server" OnClick="addProduct_Click" Text="ADD PRODUCT" />
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="p" runat="server" Width="66px"></asp:TextBox>
                  </td>
                    <td class="auto-style7">
                        
               
                    <asp:DropDownList ID="s" runat="server" Height="16px" OnSelectedIndexChanged="s_SelectedIndexChanged" CssClass="auto-style6">
                        <asp:ListItem>productName</asp:ListItem>
                        <asp:ListItem>manufacturer</asp:ListItem>
                    </asp:DropDownList>
                 </td>  
                <td class="auto-style8">
                    <asp:Button ID="search" runat="server" Text="SEARCH" OnClick="search_Click" CssClass="auto-style6" Width="103px" />
                </td>
                <td>
                    <asp:Button ID="all" runat="server" OnClick="all_Click" Text="ALL PRODUCTS" Width="123px" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="grid" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

    </form>
</body>
</html>
