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
    
    dim user
    user = Request.QueryString("username")
    SQL= "SELECT * FROM users WHERE Users = '" &user& "'"
    
    set rs=Conn.Execute(SQL)

    If rs.EOF then
        Response.Redirect "changePassForm.asp?changePass=nouserDB&p1=" & Request.QueryString("password") & "&p2=" & Request.QueryString("conf") & ""
    Else   
        dim pass
        pass = Request.QueryString("password")
        dim confirm
        confirm = Request.QueryString("conf")

        SqlQuery = "UPDATE users SET [Password] ='" & pass & "' WHERE Users='" & user & "'"
        Conn.Execute(SqlQuery)
        Set rs = Nothing
        Conn.Close
        Set Conn = Nothing
        Response.Redirect "login.asp"     
    End If
    Conn.Close
    Set Conn = Nothing
%>
</body>
</html>