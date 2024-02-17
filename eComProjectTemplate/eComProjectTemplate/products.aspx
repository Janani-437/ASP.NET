<%@ Page Title="PRODUCTS" Language="C#" MasterPageFile="~/guestMaster.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="eComProjectTemplate.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        margin-right: 0px;
    }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style5 {
        height: 40px;
    }
    .auto-style6 {
        height: 41px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <h1>Amazing Products<table class="auto-style1">
     <tr>
         <td class="auto-style3">
             <asp:TextBox ID="p" runat="server"></asp:TextBox>
         </td>
         <td>
             <asp:DropDownList ID="select" runat="server" CssClass="auto-style2">
                 <asp:ListItem>ByName</asp:ListItem>
                 <asp:ListItem>ByManufacturer</asp:ListItem>
             </asp:DropDownList>
         </td>
         <td>
             <asp:Button ID="search" runat="server" OnClick="search_Click" Text="SEARCH" Width="122px" />
         </td>
         <td>
             <asp:Button ID="all" runat="server" Text="ALL PRODUCTS" />
         </td>
         <td>&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style3">
         </td>
         <td></td>
         <td></td>
         <td>&nbsp;</td>
     </tr>
             <asp:GridView ID="grid" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="13px" Width="285px">
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
     </table>
    </h1>

</asp:Content>
