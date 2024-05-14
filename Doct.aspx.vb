Imports System.Data
Imports System.Data.SqlClient
Partial Class Doct
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-Q4RCJ6B\SQLEXPRESS;Initial Catalog=PHR;user id=sa;pwd=sql")
    Dim com As New SqlCommand
    Dim adp As New SqlDataAdapter
    Dim ds As New DataSet
    Dim qry As String
    Dim i, j As Integer
    Protected Sub B_sub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles B_sub.Click

        'Dim service As New service.WebService
        com = New SqlCommand("insert into doctor values('" & T_Did.Text & "','" & T_name.Text & "','" & D_gender.Text & "','" & T_age.Text & "','" & T_cno.Text & "','" & T_email.Text & "','" & T_address.Text & "','" & T_spec.Text & "','" & T_exp.Text & "')", con)
        'Dim status As String = service.register(qry)
        'If status = "0" Then
        '    MsgBox("Registration Failed")
        'Else
        con.Open()
        com.ExecuteNonQuery()
        con.Close()

        MsgBox("Sucessfully Saved")
        'End If

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Dim service As New service.WebService
            'Dim ai As String = service.autoinc1()
            'T_Did.Text = ai
        End If
    End Sub

    Protected Sub B_sea_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles B_sea.Click
        Dim service As New service.WebService
        Dim sear As String = InputBox("Enter Value to search")
        Dim qry As String = "Select * from doctor where Did='" & sear & "'"
        Dim ds As New DataSet
        ds = service.search2(qry)

        T_Did.Text = ds.Tables(0).Rows(0)(0)
        T_name.Text = ds.Tables(0).Rows(0)(1)
        D_gender.Text = ds.Tables(0).Rows(0)(2)
        T_age.Text = ds.Tables(0).Rows(0)(3)
        T_cno.Text = ds.Tables(0).Rows(0)(4)
        T_email.Text = ds.Tables(0).Rows(0)(5)
        T_address.Text = ds.Tables(0).Rows(0)(6)
        T_spec.Text = ds.Tables(0).Rows(0)(7)
        T_exp.Text = ds.Tables(0).Rows(0)(8)

    End Sub
    Protected Sub B_del_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles B_del.Click
        Dim service As New service.WebService
        Dim qry As String = "Delete from doctor where Did='" & T_Did.Text & "'"
        Dim status As String = service.register(qry)
        If status = "0" Then
            MsgBox("Registration Failed")
        Else
            MsgBox("Sucessfully Delete")
        End If

    End Sub
    Protected Sub B_res_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles B_res.Click
        T_Did.Text = ""
        T_name.Text = ""
        D_gender.Text = "Select"
        T_age.Text = ""
        T_cno.Text = ""
        T_email.Text = ""
        T_address.Text = ""
        T_spec.Text = ""
        T_exp.Text = ""

    End Sub
End Class
