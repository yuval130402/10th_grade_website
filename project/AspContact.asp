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

    dim email
    dim subject
    dim message
    dim theDate

    subject = Request.QueryString("subject")
    message = Request.QueryString("msg")
    theDate = FormatDateTime(now) 
    IF Session("log")="true" Then
        email = Session("email")
     Else
        email = Request.QueryString("email2")
    End If
    strSQL = "INSERT INTO Contact (email, dateMessage, subject, message) VALUES('" & email & "' , '" & theDate & "', '" & subject & "', '" & message & "');" 
    Conn.Execute(strSQL)
    Conn.Close
    Set Conn = Nothing
    Response.Redirect "homePage.asp"
    %>

</body>
</html>