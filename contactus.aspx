﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contactus.aspx.vb" Inherits="Default3" %>

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

        <span class="navbar"><asp:Menu ID="NavigationBar" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False" ForeColor="White" Orientation="Horizontal" CssClass="menu" RenderingMode="Table" Width="50%">
            <Items>
                <asp:MenuItem Text="Home" NavigateUrl="~/default.aspx"></asp:MenuItem>
                <asp:MenuItem Text="New Recipe" NavigateUrl="~/recipe.aspx"></asp:MenuItem>
                <asp:MenuItem Text="About Us" NavigateUrl="~/aboutus.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Contact Us" NavigateUrl="~/contactus.aspx"></asp:MenuItem>
            </Items>
            <StaticHoverStyle ForeColor="Black" CssClass="menu" />
            <StaticMenuItemStyle CssClass="menu" />
            <StaticMenuStyle BorderStyle="None" CssClass="menu" />
            <StaticSelectedStyle CssClass="menu" />
        </asp:Menu>
        </span>
        <hr />

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>
    </form>
        <p>
        <hr />
        <i class="footer">Copyright © 2014. Created by Ryan Lutter.</i></p>
    </body>
</html>
