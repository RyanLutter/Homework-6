
Partial Class view
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        updateForm.Focus()
        editForm.Visible = False
    End Sub

    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles editForm.ItemDeleted
        updateForm.Visible = False

        Dim deletedRecipe As String = e.Values("recipeName").ToString()

        label_deletedRecipe.Text = deletedRecipe & " has been deleted from the database."

        Response.AppendHeader("Refresh", "2;url=./Default.aspx")
    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles editForm.ItemUpdated
        updateForm.Visible = False

        Dim updatedRecipe As String = e.NewValues("recipeName").ToString()

        label_deletedRecipe.Text = updatedRecipe & " has been updated in the database."

        Response.AppendHeader("Refresh", "2;url=./Default.aspx")

    End Sub


    Protected Sub updateButton_Click(sender As Object, e As EventArgs) Handles masterButton.Click
        updateForm.Visible = False
        masterButton.Visible = False

        editForm.Visible = True
        editForm.Focus()
    End Sub
End Class


