<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default3.aspx.vb" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <span class="header">RYAN&#39;S RECIPE WEBSITE</span></div>

        <span class="header"><asp:Menu ID="NavigationBar" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="Red" Orientation="Horizontal" Width="100%">
            <Items>
                <asp:MenuItem Text="Home" NavigateUrl="~/Default.aspx"></asp:MenuItem>
                <asp:MenuItem Text="New Recipe" NavigateUrl="~/Default2.aspx"></asp:MenuItem>
                <asp:MenuItem Text="About Us" NavigateUrl="~/Default3.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Contact Us" NavigateUrl="~/Default4.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu></span>
        <hr />
    </form>
    <p>
        <i>Copyright © 2014. Created by Ryan Lutter.</i></p>
    </body>
</html>
