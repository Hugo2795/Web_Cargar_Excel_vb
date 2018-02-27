<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FrmCargaGestorCampo.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
       <link href="css/login.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 65%;
            height: 123px;
        }
        .style2
        {
            font-weight: bold;
        }
        .style3
        {            text-align: right;
        }
        .style6
        {
            color: #3333FF;
            text-decoration: underline;
            text-align: center;
        }
        .style7
        {
            width: 231px;
        }
        .style9
        {
            color: #FF0000;
            text-align: right;
        }
        .style18
        {
            height: 28px;
            text-align: right;
        }
        .style19
        {
            width: 390px;
        }
        .style20
        {
            width: 100%;
        }
        .style21
        {
            height: 57px;
            text-align: left;
        }
        .style22
        {
            color: #FFFFFF;
            text-align: right;
        }
    </style>

  <script type="text/javascript" language="javascript">
      javascript: window.history.forward(1);
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; height: 74px; background-color: #000000;">
    
        &nbsp;
    
        <table align="center" class="style20">
            <tr>
                <td class="style21">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Image ID="Image1" runat="server" Height="37px" 
            ImageUrl="~/Imagenes/logo.png"  Width="208px" />
    
                </td>
                <td class="style21">
    
        <span class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> 
    
        <span class="style22">Bienvenido</span> <span class="style22">:&nbsp;</span><span class="style9"> </span>
        <asp:Label ID="Label2" runat="server" CssClass="style9" ForeColor="White" 
            Text="Label"></asp:Label>
                    &nbsp;&nbsp;
                </td>
                <td class="style21">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White">Cerrar Sesion</asp:LinkButton>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    <br />
    <br />
    <table align="center" class="style1">
        <tr>
            <td class="style2" colspan="3">
                <h2 class="style6">
                    Carga Diaria - Gestores Campo</h2>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                *</td>
            <td class="style7">
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="style19">&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Subir Archivo" Width="137px" />
    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Enabled="False" Text="Nueva Carga" 
                    Width="150px" />
            </td>
        </tr>
        <tr>
            <td class="style18">
                </td>
            <td >
    <asp:Label ID="Label1" runat="server" Visible="False" ></asp:Label>
            &nbsp;&nbsp;&nbsp;
            </td>
            <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button 
                    ID="Button3" runat="server" style="text-align: center" 
                    Text="Crear Nueva Empresa" Width="148px" Visible="False" />
            </td>
        </tr>
        </table>
    </form>
</body>
</html>
