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

        del2 = Request.QueryString("MessageToDelete")
        strSQL = "DELETE FROM Contact WHERE ID = " &del2& ";"
        response.write(strSQL)
        Conn.Execute(strSQL)
        Conn.Close
        Set rs = Nothing
        Response.Redirect "Contact.asp"
    %>
</body>
</html>