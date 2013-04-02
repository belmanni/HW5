
Partial Class admin_newproducts
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted


        Response.Redirect("./products.aspx")
    End Sub
End Class
