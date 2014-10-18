<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

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

        <span class="header"><asp:Menu ID="NavigationBar" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="White" Orientation="Horizontal" Width="50%">
            <Items>
                <asp:MenuItem Text="Home" NavigateUrl="~/Default.aspx"></asp:MenuItem>
                <asp:MenuItem Text="New Recipe" NavigateUrl="~/Default2.aspx"></asp:MenuItem>
                <asp:MenuItem Text="About Us" NavigateUrl="~/Default4.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Contact Us" NavigateUrl="~/Default3.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu></span>
        <hr />
    <p>
        <asp:SqlDataSource ID="sqlNewRecipe" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g3ConnectionString %>" DeleteCommand="DELETE FROM [rlutter_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [rlutter_HW6] ([recipeName], [submittedBy], [Ingred1], [Ingred2], [Ingred3], [Ingred4], [Ingred5], [Prep], [Notes]) VALUES (@recipeName, @submittedBy, @Ingred1, @Ingred2, @Ingred3, @Ingred4, @Ingred5, @Prep, @Notes)" SelectCommand="SELECT * FROM [rlutter_HW6]" UpdateCommand="UPDATE [rlutter_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [Ingred1] = @Ingred1, [Ingred2] = @Ingred2, [Ingred3] = @Ingred3, [Ingred4] = @Ingred4, [Ingred5] = @Ingred5, [Prep] = @Prep, [Notes] = @Notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="Ingred1" Type="String" />
                <asp:Parameter Name="Ingred2" Type="String" />
                <asp:Parameter Name="Ingred3" Type="String" />
                <asp:Parameter Name="Ingred4" Type="String" />
                <asp:Parameter Name="Ingred5" Type="String" />
                <asp:Parameter Name="Prep" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="Ingred1" Type="String" />
                <asp:Parameter Name="Ingred2" Type="String" />
                <asp:Parameter Name="Ingred3" Type="String" />
                <asp:Parameter Name="Ingred4" Type="String" />
                <asp:Parameter Name="Ingred5" Type="String" />
                <asp:Parameter Name="Prep" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="sqlNewRecipe" DefaultMode="Insert" Height="50px" Width="431px" CssClass="detailview">
                <Fields>
                    <asp:BoundField DataField="recipeID" HeaderText="recipeID" InsertVisible="False" ReadOnly="True" SortExpression="recipeID" Visible="False" />
                    <asp:BoundField DataField="recipeName" HeaderText="Recipe Name" SortExpression="recipeName" />
                    <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                    <asp:BoundField DataField="Ingred1" HeaderText="Ingredient 1" SortExpression="Ingred1" />
                    <asp:BoundField DataField="Ingred2" HeaderText="Ingredient 2" SortExpression="Ingred2" />
                    <asp:BoundField DataField="Ingred3" HeaderText="Ingredient 3" SortExpression="Ingred3" />
                    <asp:BoundField DataField="Ingred4" HeaderText="Ingredient 4" SortExpression="Ingred4" />
                    <asp:BoundField DataField="Ingred5" HeaderText="Ingredient 5" SortExpression="Ingred5" />
                    <asp:BoundField DataField="Prep" HeaderText="Preparation" SortExpression="Prep" />
                    <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
    </form>
        <hr />
        <i>Copyright © 2014. Created by Ryan Lutter.</i></p>
    </body>
</html>