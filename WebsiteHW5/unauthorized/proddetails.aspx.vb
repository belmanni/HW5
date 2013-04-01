
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delProduct As String = e.Values("prodName").ToString()
        Response.Write("The Record")
        Response.Write("<span class=deletedproducthighlight>")
        Response.Write(delProduct)
        Response.Write("</span has been deleted from the database.>")

        Response.AddHeader("REFRESH", "3;URL=./products.aspx")


    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./products.apsx")


    End Sub
End Class
