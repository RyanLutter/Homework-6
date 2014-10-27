
Partial Class view
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        editForm.Visible = False
    End Sub

    Protected Sub updateButton_Click(sender As Object, e As EventArgs) Handles masterButton.Click
        updateForm.Visible = False
        masterButton.Visible = False

        editForm.Visible = True
        editForm.Focus()
    End Sub

    Protected Sub updateForm_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles updateForm.ItemDeleted
        masterButton.Visible = False

        label_deletedRecipe.Text = "This record has been deleted from the database."

        Response.AppendHeader("Refresh", "3;url=./Default.aspx")

    End Sub

    Protected Sub editForm_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles editForm.ItemUpdated
        Dim updatedRecipe As String = e.NewValues("recipeName").ToString()

        label_deletedRecipe.Text = updatedRecipe & " has been updated in the database."

        Response.AppendHeader("Refresh", "3;url=./Default.aspx")
    End Sub
End Class


