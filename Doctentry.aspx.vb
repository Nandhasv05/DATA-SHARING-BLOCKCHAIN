Imports System.Data.SqlClient
Imports System.Data
Partial Class Doctentry
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-Q4RCJ6B\SQLEXPRESS;Initial Catalog=PHR;user id=sa;pwd=sql")
    Dim com, com1 As New SqlCommand
    Dim adp, adp1 As New SqlDataAdapter
    Dim ds, ds1 As New DataSet
    Dim qry, qry1 As String
    Dim i, j, ii, jj As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack = False Then
            DD_pid.Items.Clear()

            Try
                qry = "Select pid from patient"
                com = New SqlCommand(qry, con)
                adp = New SqlDataAdapter(com)
                ds = New DataSet
                adp.Fill(ds, "patient")
                i = ds.Tables("patient").Rows.Count
                DD_pid.Items.Add("Select")
                For j = 0 To i - 1
                    DD_pid.Items.Add(ds.Tables("patient").Rows(j)(0))
                Next

            Catch ex As Exception

            End Try
        End If

        If IsPostBack = False Then
            DD_did.Items.Clear()

            Try
                qry1 = "Select did from doctor"
                com1 = New SqlCommand(qry1, con)
                adp1 = New SqlDataAdapter(com1)
                ds1 = New DataSet
                adp1.Fill(ds1, "doctor")
                ii = ds1.Tables("doctor").Rows.Count
                DD_did.Items.Add("Select")
                For jj = 0 To ii - 1
                    DD_did.Items.Add(ds1.Tables("doctor").Rows(jj)(0))
                Next

            Catch ex As Exception

            End Try
        End If

        


    End Sub
    Protected Sub DD_pid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DD_pid.SelectedIndexChanged
        Try
            qry = "Select name,age,cno,gender,address from patient where pid='" + DD_pid.SelectedItem.Text + "'"
            com = New SqlCommand(qry, con)
            adp = New SqlDataAdapter(com)
            ds = New DataSet
            adp.Fill(ds, "Patient")
            T_pname.Text = ds.Tables("Patient").Rows(0)(0)
            T_age.Text = ds.Tables("Patient").Rows(0)(1)
            T_cno.Text = ds.Tables("Patient").Rows(0)(2)
            T_gender.Text = ds.Tables("Patient").Rows(0)(3)
            T_address.Text = ds.Tables("Patient").Rows(0)(4)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Protected Sub Bsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Bsave.Click
        Try
            If T_pname.Text = "" Or T_age.Text = "" Or T_cno.Text = "" Or T_gender.Text = "" Or T_address.Text = "" Or T_tname.Text = "" Or T_qty.Text = "" Or T_dose.Text = "" Or T_duration.Text = "" Or T_desc.Text = "" Then
                Response.Write("<script>alert('Enter All Fields')</script>")
            Else

                qry = "Insert into Entry values('" + DD_pid.Text + "','" + T_pname.Text + "','" + T_age.Text + "','" + T_cno.Text + "','" + T_gender.Text + "','" + T_address.Text + "','" + DD_category.Text + "','" + DD_disease.Text + "','" + T_tname.Text + "','" + T_qty.Text + "','" + DD_man.Text + "','" + T_dose.Text + "','" + T_duration.Text + "','" + DD_did.Text + "','" + T_dname.Text + "','" + T_desc.Text + "')"
                com = New SqlCommand(qry, con)
                con.Open()
                com.ExecuteNonQuery()
                Response.Write("<script>alert('Sucessfully Saved')</script>")
                con.Close()

                DD_pid.Text = "Select"
                T_pname.Text = ""
                T_age.Text = ""
                T_cno.Text = ""
                T_gender.Text = ""
                T_address.Text = ""
                T_tname.Text = ""
                T_qty.Text = ""
                T_dose.Text = ""
                T_duration.Text = ""
                T_desc.Text = ""
                DD_category.Text = "Select"
                DD_disease.Text = "Select"
                DD_man.Text = "Select"
                DD_did.Text = "Select"
                T_dname.Text = ""

            End If

        Catch ex As Exception
            Response.Write("<script>alert('Already Exist')</script>")
        End Try
        

    End Sub
    Protected Sub Breset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Breset.Click
        DD_pid.Text = "Select"
        T_pname.Text = ""
        T_age.Text = ""
        T_cno.Text = ""
        T_gender.Text = ""
        T_address.Text = ""
        T_tname.Text = ""
        T_qty.Text = ""
        T_dose.Text = ""
        T_duration.Text = ""
        T_desc.Text = ""
        DD_category.Text = "Select"
        DD_disease.Text = "Select"
        DD_man.Text = "Select"
        DD_did.Text = "Select"
        T_dname.Text = ""
    End Sub
    Protected Sub DD_did_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DD_did.SelectedIndexChanged
        Try
            qry1 = "Select name from doctor where did='" + DD_did.SelectedItem.Text + "'"
            com1 = New SqlCommand(qry1, con)
            adp1 = New SqlDataAdapter(com1)
            ds1 = New DataSet
            adp1.Fill(ds1, "doctor")
            T_dname.Text = ds1.Tables("doctor").Rows(0)(0)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
