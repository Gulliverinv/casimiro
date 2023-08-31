<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Reportes.aspx.vb" Inherits="CasiMiro.Web.Reportes" %>

<%@ Register Assembly="DevExpress.Web.v23.1, Version=23.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server"></dx:ASPxGridView>
        </div>
    </form>
</body>
</html>
