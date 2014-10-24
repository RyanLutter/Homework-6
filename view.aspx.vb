
Partial Class view
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        FormView1.Focus()
    End Sub

    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        FormView1.Visible = False

        Dim deletedRecipe As String = e.Values("recipeName").ToString()

        label_deletedRecipe.Text = deletedRecipe & " has been deleted from the database."

        Response.AppendHeader("Refresh", "3;url=./Default.aspx")
    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        FormView1.Visible = False

        Dim updatedRecipe As String = e.NewValues("recipeName").ToString()

        label_deletedRecipe.Text = updatedRecipe & " has been updated in the database."

        Response.AppendHeader("Refresh", "3;url=./Default.aspx")

    End Sub
End Class


