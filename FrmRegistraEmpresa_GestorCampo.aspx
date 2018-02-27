<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FrmRegistraEmpresa_GestorCampo.aspx.vb" Inherits="FrmRegistraEmpresa_GestorCampo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 82%;
            height: 489px;
        }
        .style4
        {
            height: 26px;
            width: 234px;
        }
        .nuevoEstilo1
        {
        }
        .style5
        {
            width: 264px;
        }
        .style6
        {
            height: 26px;
            width: 264px;
        }
        .style7
        {
            text-align: center;
            font-weight: bold;
            font-size: x-large;
            text-decoration: underline;
            color: #0066FF;
        }
        .style9
        {
            width: 264px;
            height: 23px;
        }
        .style10
        {
            height: 23px;
            width: 234px;
        }
        .style11
        {
            width: 234px;
        }
        .style12
        {
            width: 158px;
            height: 30px;
            text-align: center;
        }
        .style13
        {
            width: 610px;
        }
        .style14
        {
            height: 26px;
            width: 610px;
        }
        .style15
        {
            width: 610px;
            height: 23px;
        }
        .style18
        {
            height: 23px;
        }
        .style19
        {
            width: 96px;
            height: 30px;
            text-align: center;
        }
        .style22
        {
            height: 23px;
            width: 309px;
        }
        .style23
        {
            width: 309px;
        }
        .style24
        {
            height: 26px;
            width: 309px;
        }
        .style28
        {
            width: 309px;
            height: 30px;
        }
        .style30
        {
            width: 610px;
            height: 30px;
        }
        .style31
        {
            width: 234px;
            height: 30px;
        }
        .style34
        {
            height: 26px;
        }
        .style37
        {
            color: #CC3300;
        }
        .style38
        {
            height: 117px;
        }
        .style41
        {
            height: 33px;
            width: 309px;
        }
        .style42
        {
            height: 33px;
            width: 264px;
        }
        .style43
        {
            height: 33px;
            width: 610px;
            text-align: right;
        }
        .style44
        {
            height: 33px;
            width: 234px;
        }
        .style45
        {
            width: 377px;
        }
        .style46
        {
            height: 26px;
            width: 377px;
        }
        .style47
        {
            height: 23px;
            width: 377px;
        }
        .style48
        {
            width: 377px;
            height: 30px;
        }
        .style49
        {
            height: 33px;
            width: 377px;
        }
    </style>
        <script type="text/javascript" language="javascript">
            javascript: window.history.forward(1);
            
            function validarEmail(valor) {
                if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3,4})+$/.test(valor)) {
                    alert("La dirección de email " + valor + " es correcta.");
                } else {
                    alert("La dirección de email es incorrecta.");
                }
            }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style45">
                    &nbsp;</td>
                <td class="style5" colspan="2">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    </td>
                <td class="style7">
                    </td>
                <td class="style7" colspan="6">
                    Registro de Empresa - Gestor Campo</td>
                <td class="style7">
                    </td>
            </tr>
            <tr>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style45">
                    &nbsp;</td>
                <td class="style5" colspan="2">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style45">
                    &nbsp;</td>
                <td class="style5" colspan="2">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style45">
                    Empresa :</td>
                <td class="style5" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="237px"></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Ingrese Nombre de la Empresa" 
                        ForeColor="Red" ValidationGroup="vali"></asp:RequiredFieldValidator>
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style45">
                    N. Documento Empresa :</td>
                <td class="style5" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="20" Width="237px"></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Ingrese N. Documento de la Empresa" 
                        ForeColor="Red" ValidationGroup="vali"></asp:RequiredFieldValidator>
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style45">
                    Representante Legal :</td>
                <td class="style5" colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server" Width="237px"></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Ingrese el Representante Legal" 
                        ForeColor="Red" ValidationGroup="vali"></asp:RequiredFieldValidator>
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style45">
                    N. Documento Rep. Legal :</td>
                <td class="style5" colspan="2">
                    <asp:TextBox ID="TextBox4" runat="server" MaxLength="20" Width="237px"></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Ingrese N. Documento Rep. Legal" 
                        ForeColor="Red" ValidationGroup="vali"></asp:RequiredFieldValidator>
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;</td>
                <td class="style24">
                    &nbsp;</td>
                <td class="style24">
                    &nbsp;</td>
                <td class="style46">
                    Telefono :</td>
                <td class="style6" colspan="2">
                    <asp:TextBox ID="TextBox5" runat="server" Width="237px"></asp:TextBox>
                </td>
                <td class="style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Ingrese Telefono" ForeColor="Red" 
                        ValidationGroup="vali"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style45">
                    Direccion :</td>
                <td class="style5" colspan="2">
                    <asp:TextBox ID="TextBox6" runat="server" Height="64px" MaxLength="200" 
                        TextMode="MultiLine" Width="237px"></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Ingrese la Direccion" 
                        ForeColor="Red" ValidationGroup="vali"></asp:RequiredFieldValidator>
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style45">
                    Correo :</td>
                <td class="style5" colspan="2">
                    <asp:TextBox ID="txtCorreo" runat="server"  MaxLength="50" Width="237px" ></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" 
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ControlToValidate="txtCorreo" ErrorMessage="Ingrese un correo válido"
                    ValidationGroup = "vali" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;</td>
                <td class="style24">
                    &nbsp;</td>
                <td class="style24">
                    &nbsp;</td>
                <td class="style46">
                    Pregunta :</td>
                <td class="style6" colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        Height="21px" Width="242px">
                        <asp:ListItem Value="1">¿ QUE COLOR TE GUSTA?</asp:ListItem>
                        <asp:ListItem Value="2">¿ QUE ANIMAL TE GUSTA ?</asp:ListItem>
                        <asp:ListItem Value="3">¿ COMO SE LLAMA TU MASCOTA ?</asp:ListItem>
                        <asp:ListItem Value="4">¿ PRIMER NOMBRE DE TU PAPA ?</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Seleccione una Opcion" 
                        ForeColor="Red" ValidationGroup="vali"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;</td>
                <td class="style24">
                    &nbsp;</td>
                <td class="style24">
                    &nbsp;</td>
                <td class="style46">
                    Respuesta :</td>
                <td class="style6" colspan="2">
                    <asp:TextBox ID="TextBox7" runat="server" MaxLength="50" 
                        Width="237px"></asp:TextBox>
                </td>
                <td class="style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Ingrese la Respuesta" 
                        ForeColor="Red" ValidationGroup="vali"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style22">
                    &nbsp;</td>
                <td class="style22">
                    &nbsp;</td>
                <td class="style22">
                    &nbsp;</td>
                <td class="style47">
                    Usuario :</td>
                <td class="style9" colspan="2">
                    <asp:TextBox ID="TextBox8" runat="server" MaxLength="50" 
                        Width="237px"></asp:TextBox>
                </td>
                <td class="style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="Ingrese su Usuario" 
                        ForeColor="Red" ValidationGroup="vali"></asp:RequiredFieldValidator>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style22">
                    &nbsp;</td>
                <td class="style22">
                    &nbsp;</td>
                <td class="style22">
                    &nbsp;</td>
                <td class="style47">
                    &nbsp;</td>
                <td class="style9" colspan="2">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style22">
                    &nbsp;</td>
                <td class="style22">
                    &nbsp;</td>
                <td class="style22">
                    &nbsp;</td>
                <td class="style18" colspan="4">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style22">
                    &nbsp;</td>
                <td class="style22">
                    &nbsp;</td>
                <td class="style22">
                    &nbsp;</td>
                <td class="style47">
                    &nbsp;</td>
                <td class="style9" colspan="2">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style28">
                    &nbsp;</td>
                <td class="style28">
                    &nbsp;</td>
                <td class="style28">
                    </td>
                <td class="style48">
                    </td>
                <td class="style12">
                    <asp:Button ID="Button1" runat="server" Text="Registrar" 
                        UseSubmitBehavior="False" ValidationGroup="vali" 
                        style="text-align: center" Width="74px" />
                &nbsp;</td>
                <td class="style19">
                    <asp:Button ID="Button2" runat="server" Text="Nuevo" Width="74px" />
                </td>
                <td class="style30">
                    </td>
                <td class="style31">
                    </td>
                <td class="style31">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style45">
                    &nbsp;</td>
                <td class="style5" colspan="2">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style34">
                    </td>
                <td class="style34">
                    </td>
                <td class="style34" colspan="6">
                    <h3 class="style37">
                &nbsp;Lista de Empresas 
                    </h3>
                    </td>
                <td class="style34">
                    </td>
            </tr>
            <tr>
           <td class="style38">
                    </td>
           <td class="style38">
                    </td>
           <td class="style38" colspan="7">
      
                  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                      AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                      GridLines="None" Height="115px" PageSize="5"   Width="837px">
                      <AlternatingRowStyle BackColor="White" />
                      <Columns>
                          <asp:BoundField DataField="nId" HeaderText="Item" />
                          <asp:BoundField DataField="cNombreEmpresa" HeaderText="Empresa" >
                          <ItemStyle Width="800px" />
                          </asp:BoundField>
                          <asp:BoundField DataField="cCorreo" HeaderText="Correo" />
                          <asp:BoundField DataField="nDocumentoEmpresa" HeaderText="Ruc" >
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="300px" />
                          </asp:BoundField>
                          <asp:BoundField DataField="cuser" HeaderText="Usuario" >
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="200px" />
                          </asp:BoundField>
                          <asp:BoundField DataField="clave" HeaderText="Password" >
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="200px" />
                          </asp:BoundField>
                          <asp:BoundField DataField="dFechaIni" HeaderText="Fecha Inicio" >
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="300px" />
                          </asp:BoundField>
                          <asp:CheckBoxField DataField="bActivo" HeaderText="Estado" >
                          <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
                          </asp:CheckBoxField>
                      </Columns>
                      <EditRowStyle BackColor="#2461BF" />
                      <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                      <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                      <RowStyle BackColor="#EFF3FB" />
                      <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />

                  </asp:GridView>
                    </td>
            </tr>
            <tr>
                <td class="style41">
                    &nbsp;</td>
                <td class="style41">
                    &nbsp;</td>
                <td class="style41">
                    </td>
                <td class="style49">
                    </td>
                <td class="style42" colspan="2">
                    </td>
                <td class="style43">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        PostBackUrl="~/FrmCargaGestorCampo.aspx">Regresar</asp:LinkButton>
                    </td>
                <td class="style44">
                    &nbsp;</td>
                <td class="style44">
                    &nbsp;</td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
