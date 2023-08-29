<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="CasiMiro.Web.Login" %>

<%@ Register Assembly="DevExpress.Web.v23.1, Version=23.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html class="bg-black" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-language" content="es" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Acceso al Sistema</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
</head>
<body class="bg-black">
    <div class="form-box" id="login-box">
        <div class="header">Login</div>
        <form id="form1" runat="server">
            <div class="body bg-gray">
                <div class="form-group">
                    <dx:ASPxTextBox ID="txtUsuario" runat="server" CssClass="form-control" placeholder="Ingrese usuario..."></dx:ASPxTextBox>
                </div>
                <div class="form-group">
                    <dx:ASPxTextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Ingrese clave..." TextMode="Password"></dx:ASPxTextBox>
                </div>
            </div>
            <div class="footer">
                <dx:ASPxButton ID="btnAcceso" runat="server" Text="Iniciar Sesión" CssClass="btn bg-olive btn-block" OnClick="btnAcceso_Click"></dx:ASPxButton>
            </div>
        </form>
    </div>
</body>
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
</html>
