
Partial Class FrmRegistraEmpresa_GestorCampo
    Inherits System.Web.UI.Page


    Dim objt As New clsProcesos

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim respuesta As Integer

        objt.Registra_Empresa_GestorCampo(TextBox1.Text.ToString, TextBox2.Text.ToString, TextBox3.Text.ToString, TextBox4.Text.ToString, TextBox5.Text.ToString, _
                              TextBox6.Text.ToString, txtCorreo.Text.ToString, DropDownList1.Text.ToString, TextBox7.Text.ToString, TextBox8.Text.ToString, respuesta)

        If respuesta <> 1 Then
            Label1.ForeColor = Drawing.Color.Green
            Label1.Text = "Se registro Satisfactoriamente"
            objt.ListarEmpresas(GridView1)
            Button1.Enabled = False
        Else
            Label1.ForeColor = Drawing.Color.Red
            Label1.Text = "Ya existe esa Empresa"
        End If


    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        limpiar()
    End Sub
    Sub limpiar()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        DropDownList1.SelectedIndex = 1
        TextBox1.Focus()
        Button1.Enabled = True
        Label1.Text = ""
    End Sub

    Protected Sub form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles form1.Load
        If Not IsPostBack Then
            objt.ListarEmpresas(GridView1)
        End If
    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        objt.ListarEmpresas(GridView1)
    End Sub
End Class
