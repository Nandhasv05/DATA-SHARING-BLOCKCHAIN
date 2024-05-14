Imports System.Data.SqlClient
Imports System.Data
Partial Class Preport
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-Q4RCJ6B\SQLEXPRESS;Initial Catalog=PHR;user id=sa;pwd=sql")
    Dim com As New SqlCommand
    Dim adp As New SqlDataAdapter
    Dim ds As New DataSet
    Dim qry As String
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Try
            qry = "Select * from Entry where pid='" + T_Did.Text + "'"
            com = New SqlCommand(qry, con)
            adp = New SqlDataAdapter(com)
            ds = New DataSet
            adp.Fill(ds, "Entry")
            GridView1.DataSource = ds.Tables(0)
            GridView1.DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
