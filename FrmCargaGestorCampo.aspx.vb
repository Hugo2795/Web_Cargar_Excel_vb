Imports System.IO

Partial Class _Default
    Inherits System.Web.UI.Page

    Dim oDataTemp As clsDataset
    Dim oEval As New clsProcesos

    Dim dFechaAsignacion As Date
    Dim dFechaGestion As Date
    Dim cNumeroContrato As String
    Dim nCodigoPersona As Integer
    Dim cTipoGestion As String
    Dim cResultadodeGestion As String
    Dim dFechaCompromiso As Date
    Dim cResultado As String
    Dim cAccion As String
    Public usu As String

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim nope As Integer
        If FileUpload1.HasFile Then

            Dim path As String = String.Concat((Server.MapPath("~/Temporal/" + FileUpload1.FileName)))

            FileUpload1.PostedFile.SaveAs(path)

            If System.IO.File.Exists(path) Then


                Dim objDataSet As System.Data.DataSet
                Dim objDataAdapter As System.Data.OleDb.OleDbDataAdapter
                Dim Ext As String = System.IO.Path.GetExtension(FileUpload1.FileName)
                Dim sCs As String

                '// Declarar la Cadena de conexión  
                If Ext = ".xls" Then
                    sCs = "provider=Microsoft.Jet.OLEDB.4.0; " & "data source=" & path & "; Extended Properties=Excel 8.0;"
                ElseIf Ext = ".xlsx" Then
                    sCs = "provider=Microsoft.ACE.OLEDB.12.0; " & "data source=" & path & "; Extended Properties=Excel 12.0;"
                Else
                    Label1.Visible = True
                    Label1.ForeColor = Drawing.Color.Red
                    Label1.Text = "Mensaje : Seleccione un Archivo Excel"
                    FileUpload1.Enabled = False
                    Button1.Enabled = False
                    Button2.Enabled = True
                    Exit Sub
                End If

               
                Dim objOleConnection As System.Data.OleDb.OleDbConnection
                objOleConnection = New System.Data.OleDb.OleDbConnection(sCs)

                Try
                    Dim valida, nfil As Integer
                    Dim sSql As String = "select * from " & "[Hoja1$]"
                    objDataAdapter = New System.Data.OleDb.OleDbDataAdapter(sSql, objOleConnection)
                    objDataSet = New System.Data.DataSet
                    objDataAdapter.Fill(objDataSet)
                    objOleConnection.Close()
                    oDataTemp = New clsDataset

                    With oDataTemp
                        .AgregaColumna("FECHA_ASIGNACION")
                        .AgregaColumna("FECHA_GESTION")
                        .AgregaColumna("NUMERO_CONTRATO")
                        .AgregaColumna("CODIGO_PERSONA")
                        .AgregaColumna("TIPO_DE_GESTION")
                        .AgregaColumna("RESULTADO_DE_LA_GESTION")
                        .AgregaColumna("FECHA_COMPROMISO")
                        .AgregaColumna("RESULTADO")
                        .AgregaColumna("ACCION")

                        For i As Integer = 1 To objDataSet.Tables(0).Rows.Count - 1


                            If Len(objDataSet.Tables(0).Rows(i).Item(2).ToString) <= 50 And IsDate(objDataSet.Tables(0).Rows(i).Item(0).ToString) _
                                And IsDate(objDataSet.Tables(0).Rows(i).Item(1).ToString) And IsNumeric(objDataSet.Tables(0).Rows(i).Item(3).ToString) _
                                And Not String.IsNullOrEmpty(objDataSet.Tables(0).Rows(i).Item(2).ToString) And Not String.IsNullOrEmpty(objDataSet.Tables(0).Rows(i).Item(4).ToString) _
                                And Not String.IsNullOrEmpty(objDataSet.Tables(0).Rows(i).Item(5).ToString) And (IsDate(objDataSet.Tables(0).Rows(i).Item(6).ToString) Or Not IsDate(objDataSet.Tables(0).Rows(i).Item(6).ToString)) Then

                                dFechaAsignacion = objDataSet.Tables(0).Rows(i).Item(0).ToString
                                dFechaGestion = objDataSet.Tables(0).Rows(i).Item(1).ToString
                                cNumeroContrato = objDataSet.Tables(0).Rows(i).Item(2).ToString
                                nCodigoPersona = objDataSet.Tables(0).Rows(i).Item(3).ToString
                                cTipoGestion = objDataSet.Tables(0).Rows(i).Item(4).ToString
                                cResultadodeGestion = objDataSet.Tables(0).Rows(i).Item(5).ToString
                                dFechaCompromiso = IIf(objDataSet.Tables(0).Rows(i).Item(6).ToString = "", " 01/01/1900", objDataSet.Tables(0).Rows(i).Item(6).ToString)
                                cResultado = objDataSet.Tables(0).Rows(i).Item(7).ToString
                                cAccion = objDataSet.Tables(0).Rows(i).Item(8).ToString

                                .AddRegistro()
                                .AsignarDato(dFechaAsignacion, "FECHA_ASIGNACION")
                                .AsignarDato(dFechaGestion, "FECHA_GESTION")
                                .AsignarDato(cNumeroContrato, "NUMERO_CONTRATO")
                                .AsignarDato(nCodigoPersona, "CODIGO_PERSONA")
                                .AsignarDato(cTipoGestion, "TIPO_DE_GESTION")
                                .AsignarDato(cResultadodeGestion, "RESULTADO_DE_LA_GESTION")
                                .AsignarDato(dFechaCompromiso, "FECHA_COMPROMISO")
                                .AsignarDato(cResultado, "RESULTADO")
                                .AsignarDato(cAccion, "ACCION")

                            Else

                                valida = 1
                                nfil = i + 2
                                Exit For

                            End If

                        Next
                        If Len(usu) = 0 Then usu = "XXX" Else usu = usu
                        If valida <> 1 Then
                            oEval.Registrar_Cartera_Gestor_Campo(oDataTemp, usu, nope)

                            If nope = 1 Then
                                Label1.Visible = True
                                Label1.ForeColor = Drawing.Color.Green
                                Label1.Text = "Mensaje : Se registro la carga correctamente"
                            Else
                                Label1.Visible = True
                                Label1.ForeColor = Drawing.Color.Red
                                Label1.Text = "Mensaje : Hubo un Problema al Cargar"
                            End If
                        
                        Else
                            Label1.Visible = True
                            Label1.ForeColor = Drawing.Color.Red
                            Label1.Text = "Mensaje : No se puede cargar / Verifique la Información en la Fila : " & nfil & " "
                        End If


                    End With

                    File.Delete(Server.MapPath("~/Temporal/" + FileUpload1.FileName))


                Catch ex As Exception
                    Label1.Visible = True
                    Label1.ForeColor = Drawing.Color.Red
                    Label1.Text = ex.Message.ToString

                End Try
            Else
                Label1.Visible = True
                Label1.ForeColor = Drawing.Color.Red
                Label1.Text = "Mensaje : El archivo no existe"
            End If
        Else
            Label1.Visible = True
            Label1.ForeColor = Drawing.Color.Red
            Label1.Text = "Mensaje : Seleccione un archivo"
        End If

        oDataTemp = Nothing
        FileUpload1.Enabled = False
        Button1.Enabled = False
        Button2.Enabled = True
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Label1.Visible = False
        FileUpload1.Enabled = True
        Button2.Enabled = False
        Button1.Enabled = True
    End Sub

    Protected Sub form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles form1.Load
        If Not IsPostBack Then
            usu = Session("usuario")
            If usu = "ADMIN" Then
                Button3.Visible = True
            End If
            Label2.Text = Session("NombreEmpresa")
        End If
        usu = Session("usuario")
        Label2.Text = Session("NombreEmpresa")
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session.Abandon()
        Response.Redirect("~/FrmLoginGestorCampo.aspx")
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Response.Redirect("~/FrmRegistraEmpresa_GestorCampo.aspx")
    End Sub
End Class
