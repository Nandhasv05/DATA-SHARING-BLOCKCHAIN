Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Partial Class phrrep
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-Q4RCJ6B\SQLEXPRESS;Initial Catalog=PHR;user id=sa;pwd=sql")
    Dim com As New SqlCommand
    Dim adp As New SqlDataAdapter
    Dim ds As New DataSet
    Dim qry As String
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Try
            qry = "Select pid as [PatientId],pname as PatientName,age as Age,cno as ContactNo,gender as Gender,address as [Address],category,disease,tname as TabletName,qty as Quantity,man as [Medicine Taken],dose as [Daily Dose],duration,did as Doctorid,dname as [Doctor Name],descr as [Description] from Entry where pid='" + T_Did.Text + "'"
            com = New SqlCommand(qry, con)
            adp = New SqlDataAdapter(com)
            ds = New DataSet
            adp.Fill(ds, "Entry")
            DetailsView1.DataSource = ds.Tables(0)
            DetailsView1.DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.AddHeader("content-disposition", String.Format("attachment; filename={0}", "Custom.doc"))
        Response.Charset = ""
        Response.ContentType = "application/ms-word"
        Dim sw As New StringWriter()
        Dim htw As New HtmlTextWriter(sw)
        DetailsView1.RenderControl(htw)
        Response.Write(sw.ToString())
        Response.[End]()
    End Sub
End Class


