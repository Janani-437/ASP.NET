<%@ Page Title="" Language="C#" MasterPageFile="~/guestMaster.Master" AutoEventWireup="true" CodeBehind="productNew.aspx.cs" Inherits="eComProjectTemplate.productNew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="productCode" DataSourceID="SqlDataSource1" EnableSortingAndPagingCallbacks="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="productCode" HeaderText="productCode" InsertVisible="False" ReadOnly="True" SortExpression="productCode" />
        <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
        <asp:BoundField DataField="manufacturer" HeaderText="manufacturer" SortExpression="manufacturer" />
        <asp:BoundField DataField="descripition" HeaderText="descripition" SortExpression="descripition" />
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" DeleteCommand="DELETE FROM [products] WHERE [productCode] = @productCode" InsertCommand="INSERT INTO [products] ([productName], [manufacturer], [descripition], [price]) VALUES (@productName, @manufacturer, @descripition, @price)" SelectCommand="SELECT * FROM [products]" UpdateCommand="UPDATE [products] SET [productName] = @productName, [manufacturer] = @manufacturer, [descripition] = @descripition, [price] = @price WHERE [productCode] = @productCode">
    <DeleteParameters>
        <asp:Parameter Name="productCode" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="productName" Type="String" />
        <asp:Parameter Name="manufacturer" Type="String" />
        <asp:Parameter Name="descripition" Type="String" />
        <asp:Parameter Name="price" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="productName" Type="String" />
        <asp:Parameter Name="manufacturer" Type="String" />
        <asp:Parameter Name="descripition" Type="String" />
        <asp:Parameter Name="price" Type="Int32" />
        <asp:Parameter Name="productCode" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
