Imports System.Data
Imports System.Data.SqlClient
Partial Class Nreg
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-Q4RCJ6B\SQLEXPRESS;Initial Catalog=PHR;user id=sa;pwd=sql")
    Dim com, com1 As New SqlCommand
    Dim adp As New SqlDataAdapter
    Dim ds As New DataSet
    Dim qry As String
    Dim i, j As Integer
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim rd As New Random
        Dim rr As Double = rd.Next(9999)

        'Dim service1 As New service.WebService
        com = New SqlCommand("insert into patient values('" & T_pid.Text & "','" & T_name.Text & "','" & D_gender.Text & "','" & T_age.Text & "','" & T_cno.Text & "','" & T_email.Text & "','" & T_addres.Text & "','" & rr.ToString & "')", con)

        'com = New SqlCommand("insert into hash values('" & T_pid.Text & "','" & T_name.Text & "','" & D_gender.Text & "','" & T_age.Text & "','" & T_cno.Text & "','" & T_email.Text & "','" & T_addres.Text & "','" & rr.ToString & "')", con)

        '  com1 = New SqlCommand("insert into hash values('" & rr.ToString & "')", con)


        'cmd = New SqlCommand("insert into reg values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & DropDownList1.SelectedItem.Value.ToString() & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','','')", con)

        'Dim status As String = service1.register(qry)
        'If status = "0" Then
        '    MsgBox("Registration Failed")
        'Else
        con.Open()
        com.ExecuteNonQuery()
        con.Close()
        MsgBox("Sucessfully Saved")
        'System.Diagnostics.Process.Start("http://ubaid.tk/sms/sms.aspx?uid=8940636231&pwd=vodafone&msg=A Secure Data Sharing and Authorized Searchable Framework for e-Healthcare System  This is your Secret Username:" + T_name.Text + " Password is:=" + rr.ToString + " &phone=" + T_cno.Text + "&provider=way2sms")
        'End If

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If IsPostBack = False Then
        ' Dim service1 As New service.WebService
        'Dim ai As String = service1.autoinc()
        ' T_pid.Text = ai
        'End If
        

    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        'Dim service1 As New service.WebService
        ' Dim sear As String = InputBox("Enter Value to search")


        qry = "Select name,age,cno,gender,email,address from patient where pid='" + T_pid.Text + "'"
        com = New SqlCommand(qry, con)
        adp = New SqlDataAdapter(com)
        ds = New DataSet
        adp.Fill(ds, "Patient")
        T_name.Text = ds.Tables("Patient").Rows(0)(0)
        T_age.Text = ds.Tables("Patient").Rows(0)(1)
        T_cno.Text = ds.Tables("Patient").Rows(0)(2)
        D_gender.Text = ds.Tables("Patient").Rows(0)(3)
        T_email.Text = ds.Tables("Patient").Rows(0)(4)
        T_addres.Text = ds.Tables("Patient").Rows(0)(5)
        

    End Sub
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        T_pid.Text = ""
        T_name.Text = ""
        D_gender.Text = "Select"
        T_age.Text = ""
        T_cno.Text = ""
        T_email.Text = ""
        T_addres.Text = ""
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click

        'Dim service1 As New service.WebService
        Dim qry As String = "Delete from patient where pid='" & T_pid.Text & "'"
        'Dim status As String = service1.register(qry)

        'If status = "0" Then
        '    MsgBox("Registration Failed")
        'Else
        MsgBox("Sucessfully Delete")
        'End If

        T_pid.Text = ""
        T_name.Text = ""
        D_gender.Text = ""
        T_age.Text = ""
        T_cno.Text = ""
        T_email.Text = ""
        T_addres.Text = ""


    End Sub
End Class
