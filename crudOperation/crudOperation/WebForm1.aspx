﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="crudOperation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" ShowFooter="True" >
                <AlternatingRowStyle BackColor="White" />
           <Columns>
                    <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                        </ItemTemplate>

                        <FooterTemplate>
                            <asp:LinkButton OnClick="LinkButton_Insert_Clickk" ValidationGroup="Insert" ID="LinkButton_Insert" runat="server">Insert</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="name" SortExpression="name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox_UpdateName" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="TextBox_UpdateName" ForeColor="Red" Text="*" SetFocusOnError="true" ErrorMessage="Name is a required field" ID="RFV_UpdateName" runat="server" ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox_InsertName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="Insert" ControlToValidate="TextBox_InsertName" ForeColor="Red" Text="*" SetFocusOnError="true" ErrorMessage="Name is a required field" ID="RFV_InsertName" runat="server"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="gender" SortExpression="gender">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList_UpdateGender" runat="server" Text='<%# Bind("gender")%>'>
                                <asp:ListItem>Select Gender</asp:ListItem>
                                <asp:ListItem>male</asp:ListItem>
                                <asp:ListItem>female</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="DropDownList_UpdateGender" InitialValue="Select Gender" ForeColor="Red" Text="*" SetFocusOnError="true" ErrorMessage="Gender is a required field" ID="RFV_UpdateGender" runat="server" ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="DropDownList_InsertGender" runat="server">
                                <asp:ListItem>Select Gender</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="Insert" ControlToValidate="DropDownList_InsertGender" InitialValue="Select Gender" ForeColor="Red" Text="*" SetFocusOnError="true" ErrorMessage="Gender is a required field" ID="RFV_InsertGender" runat="server" ></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="class" SortExpression="class">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox_UpdateClass" runat="server" Text='<%# Bind("class") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="TextBox_UpdateClass" ForeColor="Red" Text="*" SetFocusOnError="true" ErrorMessage="Class is a required field" ID="RFV_UpdateClass" runat="server"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("class") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox_InsertClass" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="Insert" ControlToValidate="TextBox_InsertClass" ForeColor="Red" Text="*" SetFocusOnError="true" ErrorMessage="Class is a required field" ID="RFV_InsertClass" runat="server"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
                    <asp:ValidationSummary ValidationGroup="Insert" ID="ValidationSummary1" runat="server" />
        <asp:ValidationSummary  ID="ValidationSummary2" runat="server" />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [student] WHERE [Id] = @Id" InsertCommand="INSERT INTO [student] ([name], [gender], [class]) VALUES (@name, @gender, @class)" SelectCommand="SELECT * FROM [student]" UpdateCommand="UPDATE [student] SET [name] = @name, [gender] = @gender, [class] = @class WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="class" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="class" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
