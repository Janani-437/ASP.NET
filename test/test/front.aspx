<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="front.aspx.cs" Inherits="test.front" %>

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
            <h1>* SELECT ADD SERVICE PROVIDERS TO ADD THE PROVIDERS </h1>
             <h1>* SELECT SEARCH FOR SERVICE PROVIDERS TO FIND THE PROVIDERS </h1>
        </div>
       
        <table class="auto-style1">
            <tr>
                <td><a href="serviceProvider.aspx">ADD SERVICE PROVIDER</a></td>
                <td><a href="serviceSearchForm.aspx">SEARCH FOR SERVICE PROVIDERS</a></td>
            </tr>
        </table>
       
    </form>
</body>
</html>
