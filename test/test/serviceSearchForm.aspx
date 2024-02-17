<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="serviceSearchForm.aspx.cs" Inherits="test.serviceSearchForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 173px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Search For The Requried Service
                </h1><table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:DropDownList ID="select" runat="server" Height="60px" Width="92px">
                            <asp:ListItem>serviceType</asp:ListItem>
                            <asp:ListItem>location</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="searchBox" runat="server" Width="164px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="search" runat="server" Height="40px" OnClick="search_Click" Text="SEARCH" Width="113px" />
                    </td>
                    <td>
                        <asp:Button ID="all" runat="server" OnClick="all_Click" Text="SHOW ALL" />
                    </td>
                </tr>
                </table>
            
        </div>
        <asp:GridView ID="grid" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </form>
</body>
</html>
