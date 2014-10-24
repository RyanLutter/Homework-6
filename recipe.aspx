<%@ Page Language="VB" AutoEventWireup="false" CodeFile="recipe.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 128px;
        }
        .center {}
    </style>
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
        <asp:SqlDataSource ID="sqlNewRecipe" runat="server" ConnectionString="<%$ ConnectionStrings:rlutter_HW6 %>" DeleteCommand="DELETE FROM [rlutter_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [rlutter_HW6] ([recipeName], [submittedBy], [Ingred1], [Ingred2], [Ingred3], [Ingred4], [Ingred5], [Prep], [Notes]) VALUES (@recipeName, @submittedBy, @Ingred1, @Ingred2, @Ingred3, @Ingred4, @Ingred5, @Prep, @Notes)" SelectCommand="SELECT * FROM [rlutter_HW6]" UpdateCommand="UPDATE [rlutter_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [Ingred1] = @Ingred1, [Ingred2] = @Ingred2, [Ingred3] = @Ingred3, [Ingred4] = @Ingred4, [Ingred5] = @Ingred5, [Prep] = @Prep, [Notes] = @Notes WHERE [recipeID] = @recipeID">
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
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="sqlNewRecipe" DefaultMode="Insert" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HeaderText="New Recipe" HorizontalAlign="Center" BackColor="#FFFF99" CssClass="center" Width="446px">
                <HeaderStyle Font-Bold="True" BackColor="#FFFF99" />
                <InsertItemTemplate>
                    <table>
                        <tr>
                            <td style="text-align:right; background-color:white; color:#696969; font-weight:bold;" class="auto-style3">
                                 Recipe Name:
                            </td>
                            <td class="auto-style1">
                                   <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("recipeName") %>' BackColor="LightCoral" />
                            </td> 
                            <td>
                                <asp:RequiredFieldValidator ID="rfv_Name" runat="server" ErrorMessage="Please enter a recipe name." ControlToValidate="TextBox1" CssClass="validation"></asp:RequiredFieldValidator>
                            </td>

                        </tr>
                        <tr>
                            <td style="text-align:right; background-color:white; color:#696969; font-weight:bold;" class="auto-style3">
                                Submitted By:
                            </td>
                            <td class="auto-style1">
                               <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("submittedBy") %>' BackColor="LightCoral" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfv_Submitted" runat="server" ErrorMessage="Please enter your name." ControlToValidate="TextBox2" CssClass="validation"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right; background-color:white; color:#696969; font-weight:bold;" class="auto-style3">
                                Ingredient 1:
                            </td>
                            <td class="auto-style1">
                               <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Ingred1") %>' BackColor="LightCoral" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfv_Ingred" runat="server" ErrorMessage="Please enter a ingredient." ControlToValidate="TextBox3" CssClass="validation"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right; background-color:white; color:#696969; font-weight:bold;" class="auto-style3">
                                Ingredient 2:
                            </td>
                            <td class="auto-style1">
                               <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Ingred2")%>' BackColor="LightCoral" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right; background-color:white; color:#696969; font-weight:bold;" class="auto-style3">
                                Ingredient 3:
                            </td>
                            <td class="auto-style1">
                               <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Ingred3")%>' BackColor="LightCoral" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right; background-color:white; color:#696969; font-weight:bold;" class="auto-style3">
                                Ingredient 4:
                            </td>
                            <td class="auto-style1">
                               <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Ingred4")%>' BackColor="LightCoral" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right; background-color:white; color:#696969; font-weight:bold;" class="auto-style3">
                                Ingredient 5:
                            </td>
                            <td class="auto-style1">
                               <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Ingred5")%>' BackColor="LightCoral" />
                            </td>
                        </tr> 
                        <tr>
                            <td style="text-align:right; background-color:white; color:#696969; font-weight:bold;" class="auto-style3">
                                Preparation: 
                            </td>
                            <td class="auto-style1">
                               <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Prep") %>' BackColor="LightCoral" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfv_Prep" runat="server" ErrorMessage="Please enter preparation." ControlToValidate="TextBox8" CssClass="validation"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right; background-color:white; color:#696969; font-weight:bold;" class="auto-style3">
                                Notes:
                            </td>
                            <td class="auto-style1">
                               <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Notes") %>' BackColor="LightCoral" />
                            </td>
                        </tr>
                        <tr>
                           <td></td>
                            <td class="auto-style1">
                                <asp:Button ID="insertButton" runat="server" BackColor="LightCoral" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" CausesValidation="True" CommandName="Insert" CssClass="center" Text="Insert" />
                                <asp:Button ID="cancelButton" runat="server" BackColor="LightCoral" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" CausesValidation="False" CommandName="Cancel" CssClass="center" Text="Cancel" />
                            </td>
                        </tr>
                    </Table>

                </InsertItemTemplate>
            </asp:FormView>
        <p>
            &nbsp;</form>
        <hr />
        <i class="footer">Copyright © 2014. Created by Ryan Lutter.</i></p>
    </body>
</html>