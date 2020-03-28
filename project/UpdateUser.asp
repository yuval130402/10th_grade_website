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
    
    dim last
    last = Request.QueryString("last")
    SQL= "SELECT * FROM users WHERE Users = '" &last& "'"
    
    set rs=Conn.Execute(SQL)

    If rs.EOF then
        Response.Redirect "updateform.asp?updateUser=nouserDB&z1=" & Request.QueryString("firstname") & "&z2=" & Request.QueryString("lastname") & "&z3=" & Request.QueryString("username") & "&z4=" & Request.QueryString("password") & "&z5=" & Request.QueryString("gender") & "&z6=" & Request.QueryString("gmail") & ""
    Else
        dim fname
        fname = Request.QueryString("firstname")
        if (fname = "") Then
            fname=rs("FirstName")
        End If
        dim lname
        lname = Request.QueryString("lastname")
        if (lname = "") Then
            lname=rs("LastName")
        End If  
        dim user
        user = Request.QueryString("username")
        if (user = "") Then
            user=rs("Users")
        End If 
        dim pass
        pass = Request.QueryString("password")
        if (pass = "") Then
            pass=rs("Password")
        End If 
        dim gender
        gender = Request.QueryString("gender")
        if (gender = "") Then
            gender=rs("Gender")
        End If  
        gmail = Request.QueryString("gmail")
        if (gmail = "") Then
            gmail=rs("Email")
        End If  
        Set rs = Nothing
        dim thisUser
        thisUser =  Request.QueryString("username")
        strSQL2 = "SELECT * FROM users WHERE Users= '" &thisUser& "';"
        Set rs = Conn.Execute(strSQL2)
        If rs.EOF then
            Set rs = Nothing
        Else
            Set rs = Nothing
            Response.Redirect "updateform.asp?updateUser=userinDBUpd&l=" & Request.QueryString("last") & "&z1=" & Request.QueryString("firstname") & "&z2=" & Request.QueryString("lastname") & "&z4=" & Request.QueryString("password") & "&z5=" & Request.QueryString("gender") & "&z6=" & Request.QueryString("gmail") & ""
        End If
        thisgmail = Request.QueryString("gmail")
        strSQL3 = "SELECT * FROM users WHERE Email= '" &thisgmail& "';"
        Set rs = Conn.Execute(strSQL3)
        If (rs.EOF) then 
            SqlQuery = "UPDATE users SET [FirstName] ='" & fname & "', [LastName] ='" & lname & "' , [Users] ='" & user & "', [Password] ='" & pass & "', [Gender] ='" & gender & "', [Email] ='" & gmail & "' WHERE Users='" & last & "'"
            Conn.Execute(SqlQuery)
            Set rs = Nothing
            Conn.Close
            Set Conn = Nothing
            Response.Redirect "ViewOfUsers.asp"    
         Else
            Set rs = Nothing
            Set Conn = Nothing
            Response.redirect "updateform.asp?updateUser=emailinDBUpd&l=" & Request.QueryString("last") & "&z1=" & Request.QueryString("firstname") & "&z2=" & Request.QueryString("lastname") & "&z3=" & Request.QueryString("username") & "&z4=" & Request.QueryString("password") & "&z5=" & Request.QueryString("gender") & ""
        End If   
    End If
%>
</body>
</html>