Imports Microsoft.VisualBasic
Imports System.Data

Public Class clsProcesos

    Public Sub Registrar_Cartera_Gestor_Campo(ByVal CargaExcel As clsDataset, ByVal cUser As String, ByRef nope As Integer)
        Dim objCon As clsConecta
        Dim oComm As SqlClient.SqlCommand
        objCon = New clsConecta
        oComm = New SqlClient.SqlCommand("[PER].[ResultadoDiario_GestorCampo]", objCon.DameConexion)
        oComm.CommandType = CommandType.StoredProcedure
        oComm.Parameters.Add("@carga", SqlDbType.Xml).Value = CargaExcel.DevuelveXML
        oComm.Parameters.Add("@cUsuEmpresa", SqlDbType.VarChar).Value = cUser
        oComm.Parameters.Add("@nMensaje", SqlDbType.Int).Direction = ParameterDirection.Output

        oComm.ExecuteNonQuery()
        nope = oComm.Parameters.Item("@nMensaje").Value
        objCon = Nothing
        oComm = Nothing
    End Sub

    Public Sub InicioSesion_Empresa_GestorCampo(ByVal user As String, ByVal password As String, ByRef cnomreplegal As String)
        Dim objCon As clsConecta
        Dim oComm As SqlClient.SqlCommand
        objCon = New clsConecta
        oComm = New SqlClient.SqlCommand("[PER].[InicioSesionEmpresa_GestorCampo]", objCon.DameConexion)
        oComm.CommandType = CommandType.StoredProcedure
        oComm.Parameters.Add("@user", SqlDbType.VarChar, 20).Value = user
        oComm.Parameters.Add("@password", SqlDbType.VarChar, 20).Value = password
        oComm.Parameters.Add("@cNombre", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output

        oComm.ExecuteNonQuery()
        cnomreplegal = oComm.Parameters.Item("@cNombre").Value

        objCon = Nothing
        oComm = Nothing
    End Sub

    Public Sub Registra_Empresa_GestorCampo(ByVal cnomem As String, ByVal ndocempr As String, ByVal creprlegal As String, ByVal ndocrepl As String, ByVal ctel As String, _
                                           ByVal cDireccion As String, ByVal cCorreo As String, ByVal cPreguntaCuenta As String, ByVal cRespuestaCuenta As String, ByVal cUser As String, _
                                            ByRef nres As Integer)
        Dim objCon As clsConecta
        Dim oComm As SqlClient.SqlCommand
        objCon = New clsConecta
        oComm = New SqlClient.SqlCommand("[PER].[RegistraEmpresa_GestorCampo]", objCon.DameConexion)
        oComm.CommandType = CommandType.StoredProcedure
        oComm.Parameters.Add("@cNombreEmpresa", SqlDbType.VarChar, 50).Value = cnomem
        oComm.Parameters.Add("@nDocumentoEmpresa", SqlDbType.VarChar, 20).Value = ndocempr
        oComm.Parameters.Add("@cRepresentanteLegal", SqlDbType.VarChar, 50).Value = creprlegal
        oComm.Parameters.Add("@nDocumentoRepresenLegal", SqlDbType.VarChar, 20).Value = ndocrepl
        oComm.Parameters.Add("@cTelefono", SqlDbType.VarChar, 20).Value = ctel
        oComm.Parameters.Add("@cDireccion", SqlDbType.VarChar, 200).Value = cDireccion
        oComm.Parameters.Add("@cCorreo", SqlDbType.VarChar, 200).Value = cCorreo
        oComm.Parameters.Add("@cPreguntaCuenta", SqlDbType.VarChar, 50).Value = cPreguntaCuenta
        oComm.Parameters.Add("@cRespuestaCuenta", SqlDbType.VarChar, 50).Value = cRespuestaCuenta
        oComm.Parameters.Add("@cUser", SqlDbType.VarChar, 20).Value = cUser

        oComm.Parameters.Add("@nRes", SqlDbType.Int).Direction = ParameterDirection.Output

        oComm.ExecuteNonQuery()
        nres = oComm.Parameters.Item("@nRes").Value

        objCon = Nothing
        oComm = Nothing
    End Sub

    Public Sub ListarEmpresas(ByVal grid As GridView)
        Dim objCon As clsConecta
        Dim oComm As SqlClient.SqlCommand
        Dim da As SqlClient.SqlDataAdapter
        Dim dt As DataTable
        objCon = New clsConecta
        oComm = New SqlClient.SqlCommand("[PER].[MostrarEmpresas_GestorCampo]", objCon.DameConexion)
        da = New SqlClient.SqlDataAdapter(oComm)
        dt = New DataTable
        da.Fill(dt)
        grid.DataSource = dt
        grid.DataBind()
    End Sub

End Class
