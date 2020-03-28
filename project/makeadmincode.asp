<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<%
    Set Conn = Server.CreateObject("ADODB.Connection")
    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("rs.mdb")
    
    upd = Request.QueryString("userToAdmin")
    SQL1= "SELECT * FROM users WHERE Users = '" &upd& "'"
    set rs=Conn.Execute(SQL1)
    dim changeAdm
    changeAdm = rs("admin")
    If (changeAdm = "no") Then
        changeAdm="yes"
    Else
        changeAdm = "no"
    End If
    
    strSQL = "UPDATE users SET [admin] ='" & changeAdm & "' WHERE Users = '" &upd& "';"
    Conn.Execute(strSQL)
    Conn.Close
    Set rs = Nothing
    Response.Redirect "ViewOfUsers.asp" 
%>
</body>
</html>

