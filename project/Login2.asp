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
        username = Request.QueryString("username")
        password = Request.QueryString("password")

        strSQL = "SELECT * FROM users WHERE Users= '" &username& "';"
        Set rs = Conn.Execute(strSQL)

        If (rs.EOF < 0) then
            Session("log")="false"
            Set rs = Nothing
            Conn.Close
            Set Conn = Nothing
            Response.redirect "Login.asp?login=failed&u=" & Request.QueryString("username") & "&p=" & Request.QueryString("password") & ""
        elseIf rs("password") = password then
            Session("username")=rs("Users")
            Session("password")=rs("Password")
            Session("firstname")=rs("FirstName")
            Session("lastname")=rs("LastName")
            Session("email")=rs("Email")
            Session("gender")=rs("Gender")
            Session("log")="true"  
            Session.Timeout = 30    
            If rs("admin")="yes" then  
                Session("admin")="true"
            Else
                Session("admin")="false" 
            End If  
            Set rs = Nothing
            Conn.Close
            Set Conn = Nothing
            Response.Redirect "homePage.asp"
        Else 
            Session("log")="false"
            Set rs = Nothing
            Conn.Close
            Set Conn = Nothing
            Response.Redirect "Login.asp?login=failed&u=" & Request.QueryString("username") & "&p=" & Request.QueryString("password") & ""
        End If
        If (Request.QueryString("login") = "failed") Then
            response.write("<script>document.getElementById('eror').style.visibility='visible';</script>")
            response.write("<script>document.getElementById('eror').style.display='block';</script>")
        End If  
    %>

</body>
</html>
