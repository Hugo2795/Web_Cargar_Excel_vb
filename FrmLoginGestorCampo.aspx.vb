
Partial Class FrmLoginGestorCampo
    Inherits System.Web.UI.Page

    Dim objProc As New clsProcesos
    Dim cnom As String

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox1.Text <> "" Or TextBox2.Text <> "" Then
            objProc.InicioSesion_Empresa_GestorCampo(TextBox1.Text.ToString, TextBox2.Text.ToString, cnom)
            If Len(cnom) > 0 Then
                Session("usuario") = StrConv(TextBox1.Text.ToString, VbStrConv.Uppercase)
                Session("NombreEmpresa") = cnom
                Response.Redirect("~/FrmCargaGestorCampo.aspx")
            Else
                Label1.ForeColor = Drawing.Color.Red
                Label1.Text = "Usuario Incorrecto"
                TextBox1.Text = ""
                TextBox2.Text = ""
            End If
        Else
            Label1.ForeColor = Drawing.Color.Red
            Label1.Text = "Rellenar Todos los Campos"
        End If
    End Sub

    Protected Sub form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles form1.Load
        If Not Page.IsPostBack Then
            Label1.ForeColor = Drawing.Color.White
            TextBox1.Text = ""
            TextBox2.Text = ""
            Response.Cache.SetCacheability(HttpCacheability.NoCache)
        End If
    End Sub

End Class
