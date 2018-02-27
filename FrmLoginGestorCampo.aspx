<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FrmLoginGestorCampo.aspx.vb" Inherits="FrmLoginGestorCampo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <link href="css/login.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript" language="javascript">
        javascript: window.history.forward(1);
    </script>
</head>

<body class="body">

        <form id="form1" runat="server">

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        <center>

            <div class="login" >

            <br />
                        <div class="login_form" >
                        <br />
                        <h1> Inicio de Sesion</h1>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="USUARIO" CssClass="login_un" 
                                MaxLength="10" ></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server"  placeholder="PASSWORD" 
                                CssClass="login_ps" MaxLength="10" TextMode="Password"  ></asp:TextBox>
                       
                            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="login_lbl"></asp:Label>
                        <br />
                         <br />
                            <asp:Button ID="Button1" runat="server" Text="INGRESAR" CssClass="login_btn" />
                        </div>
          
          </div>

        </center>

        </form>
 
</body>
</html>
