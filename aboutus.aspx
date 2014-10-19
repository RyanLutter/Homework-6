<%@ Page Language="VB" AutoEventWireup="false" CodeFile="aboutus.aspx.vb" Inherits="Default4" %>

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

        <span class="header"><asp:Menu ID="NavigationBar" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="White" Orientation="Horizontal" Width="100%">
            <Items>
                <asp:MenuItem Text="Home" NavigateUrl="~/default.aspx"></asp:MenuItem>
                <asp:MenuItem Text="New Recipe" NavigateUrl="~/recipe.aspx"></asp:MenuItem>
                <asp:MenuItem Text="About Us" NavigateUrl="~/aboutus.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Contact Us" NavigateUrl="~/contactus.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu></span>
        <hr />
    </form>
    <p>
        Are you getting tired of having to get fast food or sit-down meals every single night? Are you running out of ideas of things to make at home? Ryan said YES to all of these things as well. That&#39;s why he decided to make Ryan&#39;s Recipe Website - a recipe site with recipes that are going to list all of the ingredients and necessary steps to create a perfect dish!<p>
        Ryan wants YOU to add your recipe to his website! I know that a lot of people are blogging on their own websites, but lets make a central location where we can store all the different types of recipes and let everyone enjoy them.
        <p>
            If you have any questions or concerns, please visit the Contact Us page. Thanks!<hr />
        <i>Copyright © 2014. Created by Ryan Lutter.</i></p>
    </body>
</html>
