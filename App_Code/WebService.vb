Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Data.SqlClient
Imports System.Data
<WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Public Class WebService
    Inherits System.Web.Services.WebService
    Dim con As New SqlConnection("Data Source=DESKTOP-Q4RCJ6B\SQLEXPRESS;Initial Catalog=PHR;user id=sa;pwd=sql")
    <WebMethod()> _
    Public Function HelloWorld() As String
        Return "Hello World"
    End Function
    <WebMethod()> _
    Public Function register(ByVal qry As String) As String
        Dim com As New SqlCommand(qry, con)
        con.Open()
        If com.ExecuteNonQuery = 0 Then
            Return "0"
        Else
            Return "1"
        End If
        con.Close()
    End Function
    <WebMethod()> _
    Public Function autoinc() As String
        Dim com As New SqlCommand("Select pid from patient order by pid asc ", con)
        Dim adp As New SqlDataAdapter(com)
        Dim ds As New DataSet
        adp.Fill(ds, "Patient")
        Dim i As Integer = ds.Tables(0).Rows.Count
        Dim val As String = ds.Tables(0).Rows(i - 1)(0)
        val = val + 1
        Return val
    End Function
    <WebMethod()> _
       Public Function search1(ByVal qry1 As String) As DataSet
        Dim com As New SqlCommand(qry1, con)
        Dim adp As New SqlDataAdapter(com)
        Dim ds As New DataSet
        adp.Fill(ds)
        Return ds

    End Function
    <WebMethod()> _
       Public Function search2(ByVal qry1 As String) As DataSet
        Dim com As New SqlCommand(qry1, con)
        Dim adp As New SqlDataAdapter(com)
        Dim ds As New DataSet
        adp.Fill(ds, "Doctor")
        Return ds

    End Function
    <WebMethod()> _
   Public Function autoinc1() As String

        Dim com As New SqlCommand("Select Did from Doctor order by Did asc ", con)
        Dim adp As New SqlDataAdapter(com)
        Dim ds As New DataSet
        adp.Fill(ds, "Doctor")
        Dim i As Integer = ds.Tables(0).Rows.Count
        Dim val As String = ds.Tables(0).Rows(i - 1)(0)
        val = val + 1
        Return val
    End Function

End Class
