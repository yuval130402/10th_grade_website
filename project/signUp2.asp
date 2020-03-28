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

        dim fName
        dim lName
        dim user
        dim password
        dim gender
        dim email
    
        fName = Request.QueryString("firstname")
        lName = Request.QueryString("lastname")
        user = Request.QueryString("username")
        password = Request.QueryString("password")
        gender = Request.QueryString("gender")
        email = Request.QueryString("gmail")
        adminis = "no"

        strSQL2 = "SELECT * FROM users WHERE Users= '" &user& "';"
        Set rs = Conn.Execute(strSQL2)
        If (rs.EOF) then
            Set rs = Nothing
        Else
            Set rs = Nothing
            Set Conn = Nothing
            Response.redirect "signUp.asp?signup=userinDB&x1=" & Request.QueryString("firstname") & "&x2=" & Request.QueryString("lastname") & "&x4=" & Request.QueryString("password") & "&x5=" & Request.QueryString("conf") & "&x6=" & Request.QueryString("gender") & "&x7=" & Request.QueryString("gmail") & ""
        End If
        strSQL3 = "SELECT * FROM users WHERE Email= '" &email& "';"
        Set rs = Conn.Execute(strSQL3)
        If (rs.EOF) then 
            strSQL = "INSERT INTO users VALUES('" & fName & "' , '" & lName & "', '" & user & "', '" & password & "', '" & gender & "', '" & email & "', '" & adminis & "');" 
            Conn.Execute(strSQL) 
            Set rs = Nothing
            Conn.Close
            Set Conn = Nothing
            Response.Redirect "Login.asp"    
         Else
            Set rs = Nothing
            Set Conn = Nothing
            Response.redirect "signUp.asp?signup=emailinDB&x1=" & Request.QueryString("firstname") & "&x2=" & Request.QueryString("lastname") & "&x3=" & Request.QueryString("username") & "&x4=" & Request.QueryString("password") & "&x5=" & Request.QueryString("conf") & "&x6=" & Request.QueryString("gender") & ""
        End If
        
        If (request.QueryString("signup")= "emailinDB") Then
            response.write("<script>document.getElementById('eror2').style.visibility='visible'</script>")
            response.write("<script>document.getElementById('eror2').style.display='block'</script>")
        elseIf(request.QueryString("signup")= "userinDB") Then
            response.write("<script>document.getElementById('eror3').style.visibility='visible'</script>")
            response.write("<script>document.getElementById('eror3').style.display='block'</script>")
        End If  
    %>       

</body>
</html>


