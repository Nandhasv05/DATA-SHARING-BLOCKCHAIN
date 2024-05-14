Imports System.Data.SqlClient
Imports System.Data
Partial Class Search
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-Q4RCJ6B\SQLEXPRESS;Initial Catalog=PHR;user id=sa;pwd=sql")
    Dim com As New SqlCommand
    Dim adp As New SqlDataAdapter
    Dim ds As New DataSet
    Dim qry As String
    Dim i, j As Integer
    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        If DropDownList1.SelectedItem.Text = "Name" Then
            DropDownList2.Items.Clear()
            Try
                qry = "select distinct name from Doctor"
                com = New SqlCommand(qry, con)
                adp = New SqlDataAdapter(com)
                ds = New DataSet
                adp.Fill(ds, "Doctor")
                i = ds.Tables("Doctor").Rows.Count
                DropDownList2.Items.Add("--Select--")
                For j = 0 To i - 1
                    DropDownList2.Items.Add(ds.Tables("Doctor").Rows(j)(0))
                Next
            Catch ex As Exception
            End Try


        ElseIf DropDownList1.SelectedItem.Text = "Phone" Then
            DropDownList2.Items.Clear()
            Try
                qry = "select distinct cno from Doctor"
                com = New SqlCommand(qry, con)
                adp = New SqlDataAdapter(com)
                ds = New DataSet
                adp.Fill(ds, "Doctor")
                i = ds.Tables("Doctor").Rows.Count
                DropDownList2.Items.Add("--Select--")
                For j = 0 To i - 1
                    DropDownList2.Items.Add(ds.Tables("Doctor").Rows(j)(0))
                Next
            Catch ex As Exception
            End Try


            'ElseIf DropDownList1.SelectedItem.Text = "Address" Then
            '    DropDownList2.Items.Clear()

            '    Try
            '        qry = "select distinct address from Doctor"
            '        com = New SqlCommand(qry, con)
            '        adp = New SqlDataAdapter(com)
            '        ds = New DataSet
            '        adp.Fill(ds, "Doctor")
            '        i = ds.Tables("Doctor").Rows.Count
            '        DropDownList2.Items.Add("--Select--")
            '        For j = 0 To i - 1
            '            DropDownList2.Items.Add(ds.Tables("Doctor").Rows(j)(0))
            '        Next
            '    Catch ex As Exception
            '    End Try

        ElseIf DropDownList1.SelectedItem.Text = "Specilisation" Then
            DropDownList2.Items.Clear()
            Try
                qry = "select distinct spec from Doctor"
                com = New SqlCommand(qry, con)
                adp = New SqlDataAdapter(com)
                ds = New DataSet
                adp.Fill(ds, "Doctor")
                i = ds.Tables("Doctor").Rows.Count
                DropDownList2.Items.Add("--Select--")
                For j = 0 To i - 1
                    DropDownList2.Items.Add(ds.Tables("Doctor").Rows(j)(0))
                Next
            Catch ex As Exception
            End Try
        End If
    End Sub
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click

        If DropDownList1.SelectedItem.Text = "Name" Then
            Try
                If DropDownList2.Text = "" Then
                    MsgBox("Please Select Any One  Then Search", MsgBoxStyle.Information)
                Else
                    qry = "select Did as REGNO,name as NAME,gender as GENDER,cno as CONTACT,email as EMAIL,address as ADDRESS,spec as SPECIALIZATION,exp as EXPERIENCE from Doctor where name='" + DropDownList2.Text + "'"
                    com = New SqlCommand(qry, con)
                    adp = New SqlDataAdapter(com)
                    ds = New DataSet
                    adp.Fill(ds, "Doctor")
                    GridView1.DataSource = ds
                    GridView1.DataMember = "Doctor"
                    GridView1.DataBind()
                End If
            Catch ex As Exception
            End Try

        ElseIf DropDownList1.SelectedItem.Text = "Phone" Then
            Try
                If DropDownList2.Text = "" Then
                    MsgBox("Please Select Any One  Then Search", MsgBoxStyle.Information)
                Else
                    qry = "select Did as REGNO,name as NAME,gender as GENDER,cno as CONTACT,email as EMAIL,address as ADDRESS,spec as SPECIALIZATION,exp as EXPERIENCE from Doctor where cno='" + DropDownList2.Text + "'"
                    com = New SqlCommand(qry, con)
                    adp = New SqlDataAdapter(com)
                    ds = New DataSet
                    adp.Fill(ds, "Doctor")
                    GridView1.DataSource = ds
                    GridView1.DataMember = "Doctor"
                    GridView1.DataBind()
                End If
            Catch ex As Exception
            End Try

            'ElseIf DropDownList1.SelectedItem.Text = "Address" Then
            '    Try
            '        If DropDownList2.Text = "" Then
            '            MsgBox("Please Select Any One  Then Search", MsgBoxStyle.Information)
            '        Else
            '            qry = "select Did as REGNO,name as NAME,gender as GENDER,cno as CONTACT,email as EMAIL,address as ADDRESS,spec as SPECILISATION,exp as EXPERIENCE from Doctor where address='" + DropDownList2.Text + "'"
            '            com = New SqlCommand(qry, con)
            '            adp = New SqlDataAdapter(com)
            '            ds = New DataSet
            '            adp.Fill(ds, "Doctor")
            '            GridView1.DataSource = ds
            '            GridView1.DataMember = "Doctor"
            '            GridView1.DataBind()
            '        End If
            '    Catch ex As Exception
            '    End Try

        ElseIf DropDownList1.SelectedItem.Text = "Specialization" Then
            Try
                If DropDownList2.Text = "" Then
                    MsgBox("Please Select Any One  Then Search", MsgBoxStyle.Information)
                Else
                    qry = "select Did as REGNO,name as NAME,gender as GENDER,cno as CONTACT,email as EMAIL,address as ADDRESS,spec as SPECIALIZATION,exp as EXPERIENCE from Doctor where spec='" + DropDownList2.Text + "'"
                    com = New SqlCommand(qry, con)
                    adp = New SqlDataAdapter(com)
                    ds = New DataSet
                    adp.Fill(ds, "Doctor")
                    GridView1.DataSource = ds
                    GridView1.DataMember = "Doctor"
                    GridView1.DataBind()
                End If
            Catch ex As Exception
            End Try

        End If

    End Sub
End Class
