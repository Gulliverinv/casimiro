Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnAcceso_Click(sender As Object, e As EventArgs) Handles btnAcceso.Click
        Conexion.AbrirConexion()
        Conexion.Cnn.Open()

        Dim da As New SqlClient.SqlDataAdapter("select * from usuarios where usuario='" & txtUsuario.Text & "' and Pasword='" & txtPassword.Text & "'", Conexion.Cnn)
        Dim ds As New DataSet
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            CreateCookies()
            'Response.Redirect("~/Clientes.aspx")
            Response.Redirect("Clientes.aspx")
        Else
            MsgBox("Usuario incorrecto !!! ", vbCritical, "Login Error")
        End If
        Conexion.Cnn.Close()
    End Sub

    'agrego un sub para crear una cookie, esta mantendra la sesión mientras estamos trabajando
    'si detecta ianctividad por 3 minutos se sale y vuelve al login
    Private Sub CreateCookies()
        Dim FechaHora As String = Now.AddMinutes(3)
        If Request.Cookies("EmpleadoASP") Is Nothing Then
            Dim aCookie As New HttpCookie("EmpleadoASP")
            aCookie.Value = "Activa"
            aCookie.Expires = FechaHora
            Response.Cookies.Add(aCookie)
        Else

        End If
    End Sub
End Class