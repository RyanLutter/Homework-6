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

        <span class="header"><asp:Menu ID="NavigationBar" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False" ForeColor="White" Orientation="Horizontal" CssClass="menu" RenderingMode="Table" Width="100%">
            <Items>
                <asp:MenuItem Text="Home" NavigateUrl="~/default.aspx"></asp:MenuItem>
                <asp:MenuItem Text="New Recipe" NavigateUrl="~/recipe.aspx"></asp:MenuItem>
                <asp:MenuItem Text="About Us" NavigateUrl="~/aboutus.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Contact Us" NavigateUrl="~/contactus.aspx"></asp:MenuItem>
            </Items>
            <StaticHoverStyle ForeColor="Black" />
            <StaticMenuStyle BorderStyle="None" />
        </asp:Menu>
        </span>
        <hr />
    <p>
        <asp:Image ID="Image1" runat="server" BorderWidth="2px" Height="200px" ImageAlign="Top" ImageUrl="~/Images/cooking.jpg" Width="30%" BorderColor="Black" style="margin-top: 0px" />
        <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl="~/Images/recipe.jpg" Width="30%" BorderColor="Black" BorderWidth="2px" />
        <asp:Image ID="Image3" runat="server" Height="200px" ImageUrl="~/Images/food.jpg" Width="30%" BorderColor="Black" BorderWidth="2px" />
       <p>
       <span class="aboutUS">Lorem ipsum dolor sit amet, cu probo consectetuer nam, erant hendrerit ut quo. Eum ea persius aliquam omnesque, vix ne adhuc facilis scaevola. No mel rebum malis oportere, no nominavi argumentum accommodare ius. Ut corrumpit sadipscing mel. Ea vim vocibus electram.
           Id oblique volumus suscipiantur per. Vis errem oportere theophrastus ea. Id utinam noster corpora sed, usu nisl tation soluta et.</span>
        <p>
        <span class="aboutUS">Ut vero delectus nec, an vulputate comprehensam quo, tota elitr menandri ei qui. Ius eirmod copiosae at. Cu eam eros movet suavitate, harum reprimique interesset mel eu.</span>
        <p>
            <span class="aboutUS">Delenit tractatos urbanitas ut his, lorem singulis constituam et eos, ex eos nostro ceteros dissentiet. Veniam vocent qui et, debet debitis pri eu, mea id alterum repudiandae. Tale tation quaestio at vix, nec ut legimus ullamcorper, duo summo oporteat eu. Alterum scripserit ius in, vis cu omnis prodesset referrentur, eloquentiam consectetuer ne duo.</span>

        </form>
    <hr />
        <i class="footer">Copyright © 2014. Created by Ryan Lutter.</i></p>
    </body>
</html>
