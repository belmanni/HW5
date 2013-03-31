
Partial Class login_default
    Inherits System.Web.UI.Page

    'cursor autom aooears in username box'
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Login1.Focus()
    End Sub
End Class
