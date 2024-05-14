Imports System.Data.SqlClient
Imports System.Data
Partial Class Login
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-Q4RCJ6B\SQLEXPRESS;Initial Catalog=PHR;user id=sa;pwd=sql")
    Dim com As New SqlCommand
    Dim qry As String
    Dim adp As New SqlDataAdapter
    Dim ds As New DataSet
    Dim i As Integer
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If T_user.Text = "" Or T_pass.Text = "" Then
            MsgBox("Plz Enter Username and Password")
        ElseIf T_user.Text = "admin" And T_pass.Text = "admin" Then
            T_user.Text = ""
            T_pass.Text = ""
            T_user.Focus()
            Response.Redirect("Home.aspx")
            Exit Sub
        End If
        Try
            qry = "select name,hash from patient where name= '" + T_user.Text + "' and hash='" + T_pass.Text + "'"
            com = New SqlCommand(qry, con)
            adp = New SqlDataAdapter(com)
            ds = New DataSet
            adp.Fill(ds, "patient")
            i = ds.Tables("patient").Rows.Count
            If i > 0 Then
                Response.Redirect("Home2.aspx")
            Else
                Response.Write("<script>alert('Sorry Invalid User_Id and Password')</script>")
                Dim dat As String = DateAndTime.Now
                Dim cmd As New SqlCommand("insert into hacker values('" & T_user.Text & "','" & T_pass.Text & "','" & dat & "')", con)
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                T_user.Text = ""
                T_pass.Text = ""
                T_user.Focus()
            End If
        Catch ex As Exception
            ex.Message.ToString()
        End Try
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label2.Text = Date.Today
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        T_user.Text = ""
        T_pass.Text = ""
    End Sub
End Class
