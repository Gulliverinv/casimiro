Imports System.Web
Imports System.Data.SqlClient
Public Class Conexion
    'Sqlconnection representa una cadena de conexion, establece una conexión fisica con la BD
    Public Shared Cnn As SqlClient.SqlConnection
    Public Shared Validar As String = "0"

    Public Shared Sub AbrirConexion()
        Cnn = New SqlConnection("Server=DESKTOP-V0G0RCE\SQLEXPRESS;Database=store;User Id=sa;Password=pepito; ")
    End Sub
End Class
