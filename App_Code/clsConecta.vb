Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Public Class clsConecta

    Private oConex As SqlConnection

    Public Sub AbrirConexion()
        Dim C As SqlCommand
        oConex.Open()
        C = oConex.CreateCommand()
        C.CommandText = "SET DATEFORMAT DMY"
        C.ExecuteNonQuery()
        C = Nothing
    End Sub

    Public Function DameConexion() As SqlConnection
        Dim C As SqlCommand

        Dim conectionstring = ConfigurationManager.ConnectionStrings("MyProviderConnectionString").ConnectionString
        oConex = New SqlConnection(conectionstring)
        oConex.Open()
        C = oConex.CreateCommand()
        C.CommandText = "SET DATEFORMAT DMY"
        C.ExecuteNonQuery()
        C = Nothing

        Return oConex
    End Function
End Class
