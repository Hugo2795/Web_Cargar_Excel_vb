Imports Microsoft.VisualBasic
Imports System.Data.SqlClient

<Serializable()> Public Class clsDataset
    Public Columna() As String
    Public Dato(,) As String
    Public nNumFilas As Integer
    Public nNumColumn As Integer
    Private nCursor As Integer
    Public cNomTab As String

    Public Sub Seek(ByVal nNumFila As Integer)
        nCursor = nNumFila
    End Sub

    Public Sub EliminaRegistro(ByVal pnRegistro As Integer)
        Dim DatoTemp As Object
        Dim i As Integer
        Dim j As Integer
        Dim nPunt As Integer

        DatoTemp = New Object
        DatoTemp = Dato
        ReDim Dato(0, 0)
        ReDim Dato(nNumFilas - 1, nNumColumn)
        nPunt = 1
        For i = 1 To nNumFilas
            If i <> pnRegistro Then
                For j = 1 To nNumColumn
                    Dato(nPunt, j) = DatoTemp(i, j)
                Next
                nPunt = nPunt + 1
            End If
        Next
        nNumFilas = nNumFilas - 1


    End Sub

    Public Function AddRegistro() As Integer
        Dim DatoTemp As Object
        Dim i As Integer
        Dim j As Integer

        DatoTemp = New Object
        DatoTemp = Dato
        ReDim Dato(0, 0)
        ReDim Dato(nNumFilas + 1, nNumColumn)

        For i = 1 To nNumFilas
            For j = 1 To nNumColumn
                Dato(i, j) = DatoTemp(i, j)
            Next
        Next
        nNumFilas = nNumFilas + 1

        For j = 1 To nNumColumn
            Dato(nNumFilas, j) = ""
        Next

        Seek(nNumFilas) 'ARCV 31-01-2008
        AddRegistro = nNumFilas
    End Function



    Public Function ObtenerDato(ByVal psNomCampo As String, _
                                Optional ByVal nFila As Integer = 0) As String
        Dim i As Integer
        ObtenerDato = "@#err"
        For i = 0 To nNumColumn
            If UCase(Columna(i)) = UCase(psNomCampo) Then
                'ARCV 28-02-2008
                'ObtenerDato = Dato(nCursor, i)
                If nFila = 0 Then
                    ObtenerDato = Dato(nCursor, i)
                Else
                    ObtenerDato = Dato(nFila, i)
                End If
                '-------------
                Exit For
            End If

        Next
        If ObtenerDato <> "@#err" Then
            If ObtenerDato = Nothing Then
                If Mid(psNomCampo, 1, 1) = "n" Then
                    ObtenerDato = "0"
                Else
                    ObtenerDato = ""
                End If

            End If
        End If
    End Function


    Public Sub Inicio()
        nCursor = 1
    End Sub

    Public Sub Fin()
        nCursor = nNumFilas
    End Sub

    Public Sub Previo()
        If nCursor > 0 Then nCursor -= 1
    End Sub

    Public Sub Siguiente()
        If Not EOF() Then nCursor += 1
    End Sub

    Public Function EOF() As Boolean
        If nCursor > nNumFilas Then
            Return True
        Else
            Return False
        End If
    End Function

    Public Sub AsignarDato(ByVal sDato As String, _
                            ByVal sNomColumna As String, _
                            Optional ByVal nNumFila As Integer = 0)

        Dim i As Integer
        For i = 1 To nNumColumn
            If Columna(i) = sNomColumna Then
                If nNumFila = 0 Then
                    Dato(nCursor, i) = sDato
                Else
                    Dato(nNumFila, i) = sDato
                End If
                Exit For
            End If
        Next

    End Sub

    Public Function DevuelveXML() As String
        Dim oXml As String = ""
        Dim oXmlTemp As String = _
                "<GENESYS>"
        Dim i As Integer
        Inicio()
        While Not EOF()
            oXmlTemp = oXmlTemp + "<DATA"
            For i = 1 To nNumColumn

                oXmlTemp = oXmlTemp + " " + Trim(Columna(i)) + "=""" + RetornaValorXML(Trim(ObtenerDato(Columna(i)))) + """"
                '"<" + oData.cNomTab + " " + .Columna(i) + "=" + .ObtenerDato(.Columna(i)) + "></" + oData.cNomTab + ">"

                If Len(oXmlTemp) > 1000 Then
                    oXml = oXml + oXmlTemp
                    oXmlTemp = ""
                End If
            Next
            oXmlTemp = oXmlTemp + "></DATA>"
            Siguiente()
        End While


        If oXmlTemp <> "" Then oXml = oXml + oXmlTemp
        oXml = oXml + "</GENESYS>"
        Return oXml
    End Function

    Private Function RetornaValorXML(ByVal cCadena As String) As String

        If Trim(cCadena) <> "" Then
            'cCadena = Replace(cCadena, "á", "&#225;")
            'cCadena = Replace(cCadena, "é", "&#233;")
            'cCadena = Replace(cCadena, "í", "&#237;")
            'cCadena = Replace(cCadena, "ó", "&#243;")
            'cCadena = Replace(cCadena, "ú", "&#250;")
            'cCadena = Replace(cCadena, "ñ", "&#241;")
            'cCadena = Replace(cCadena, "Ñ", "&#209;")
            'cCadena = Replace(cCadena, "à", "&#224;")
            'cCadena = Replace(cCadena, "è", "&#232;")
            'cCadena = Replace(cCadena, "ì", "&#236;")
            'cCadena = Replace(cCadena, "ò", "&#242;")
            'cCadena = Replace(cCadena, "ù", "&#249;")

            'cCadena = Replace(cCadena, "ç", "&#231;")
            'cCadena = Replace(cCadena, "â", "&#226;")
            'cCadena = Replace(cCadena, "ê", "&#234;")
            'cCadena = Replace(cCadena, "î", "&#238;")
            'cCadena = Replace(cCadena, "ô", "&#244;")
            'cCadena = Replace(cCadena, "û", "&#251;")
            'cCadena = Replace(cCadena, "Ç", "&#199;")
            'cCadena = Replace(cCadena, "©", "&#169;")
            'cCadena = Replace(cCadena, "®", "&#174;")

            cCadena = Replace(cCadena, "&", "&amp;")
            cCadena = Replace(cCadena, "<", "&lt;")
            cCadena = Replace(cCadena, ">", "&gt;")
            cCadena = Replace(cCadena, "'", "&apos;")
            cCadena = Replace(cCadena, """", "&quot;")
        End If

        Return Trim(cCadena)
    End Function

    Public Sub CrearVacio(ByVal oColumnas As Object)
        Dim i As Integer

        ReDim Columna(UBound(oColumnas))
        nNumColumn = UBound(oColumnas)

        For i = 1 To UBound(oColumnas)
            Columna(i) = Trim(oColumnas(i))
        Next

    End Sub

    Public Sub EliminaColumna(ByVal sNomColumna As String)
        Dim i As Integer, j As Integer
        Dim nColumnElim As Integer

        For i = 1 To nNumColumn
            If UCase(Columna(i)) = UCase(sNomColumna) Then
                nColumnElim = i
                Exit For
            End If
        Next

        For i = nColumnElim To nNumColumn - 1
            Columna(i) = Columna(i + 1)
        Next
        ReDim Preserve Columna(nNumColumn - 1)

        For j = 1 To nNumFilas
            For i = nColumnElim To nNumColumn - 1
                Dato(j, i) = Dato(j, i + 1)
            Next i
        Next j
        ReDim Preserve Dato(nNumFilas, nNumColumn - 1)
        nNumColumn -= 1

    End Sub

    Public Function DevuelveIndiceColumna(ByVal sNomColumna As String) As Integer

        Dim i As Integer
        Dim nTemp As Integer = 0

        For i = 1 To nNumColumn
            If UCase(Columna(i)) = UCase(sNomColumna) Then
                nTemp = i
                Exit For
            End If
        Next

        Return nTemp
    End Function

    Public Sub AgregaColumna(ByVal sNomColumna As String, _
                            Optional ByVal sValorDefecto As String = "")
        Dim j As Integer
        Dim nIndiceCol As Integer

        ReDim Preserve Dato(nNumFilas, nNumColumn + 1)
        ReDim Preserve Columna(nNumColumn + 1)
        Columna(nNumColumn + 1) = sNomColumna
        nNumColumn += 1

        If sValorDefecto <> "" Then
            nIndiceCol = DevuelveIndiceColumna(sNomColumna)
            For j = 1 To nNumFilas
                Dato(j, nIndiceCol) = sValorDefecto
            Next j
        End If

    End Sub


End Class
