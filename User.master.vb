Partial Class User
    Inherits System.Web.UI.MasterPage
    Protected Sub Bhome_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Bhome.Click
        Response.Redirect("Home2.aspx")
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("Aboutus.aspx")
    End Sub
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("Contact.aspx")
    End Sub
    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        Response.Redirect("Login.aspx")
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("doctsear.aspx")
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Response.Redirect("phrrep.aspx")
    End Sub
End Class

