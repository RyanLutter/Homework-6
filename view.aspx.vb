
Partial Class view
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        details.Visible = False
        DetailsView1.Visible = False

        Dim deletedRecipe As String = e.Values("recipeName").ToString()

        label_deletedRecipe.Text = deletedRecipe & " has been deleted from the database."

        Response.AppendHeader("Refresh", "3;url=./Default.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        details.Visible = False
        DetailsView1.Visible = False

        Dim updatedRecipe As String = e.NewValues("recipeName").ToString()

        label_deletedRecipe.Text = updatedRecipe & " has been updated in the database."

        Response.AppendHeader("Refresh", "3;url=./Default.aspx")
    End Sub
End Class
