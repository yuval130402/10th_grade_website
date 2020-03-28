<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>NBA Basketball!!-Standings</title>
        <link rel="stylesheet" type="text/css" href="CSSproject.css"/>
    </head>
    <body onunload="window.location.href='abandon10.asp';">
        <% 
            If Session("log") <>"true" Then
                Response.Redirect "Login.asp"         
            End If
        %>
        <% 
            If Session("log")="false" Then
            Session.Contents.Remove("log")
            End If
        %>
        <% 
            Dim adm1
            Dim adm2
            Dim dis
            Dim sid
            If Session("log")="true" Then
                dis = "unset"
                sid = "none"
            Else
                dis = "none"
                sid = "unset"
            End If
            If Session("admin")="true" Then
                adm1 = "none"
                adm2 = "unset"
            Else
                adm1 = "unset"
                adm2 = "none"
            End If
        %>
      <ul>
        <li><a class="active" href="homePage.asp">Home</a></li>
        <li><a href="aboutNBA.asp">About NBA</a></li>
        <li class="dropdown">
            <a class="dropbtn" style="display:<%=dis%>;">Teams</a>
            <div class="dropdown-content">
                <a href="east.asp">EAST</a>
                <a href="west.asp">WEST</a>
            </div>
        </li>
        <li><a href="Standing.asp">Standings</a></li>
        <li><a href="Video.asp">Video</a></li>
        <li><a href="contact.asp">Contact</a></li>
        <li><a href="ViewOfUsers.asp" style="display:<%=adm2%>;">Users</a></li>
        <li><a href="updateform.asp" style="display:<%=adm2%>;">Update</a></li>
        <li style="float:right;display:<%=sid%>;"><a href="Login.asp">Login</a></li>
        <li style="float:right;display:<%=dis%>;"><a href="abandon10.asp">Log-out</a></li>
      </ul> 
      <div class="header">
        <div class="progress-container">
            <div class="progress-bar" id="myBar"></div>
        </div>  
      </div> 
      <div style="padding:20px;margin-top:30px;height:1500px;">
      <span class="tooltip"><img name="nba" id="nba" src="images/655e9e5e-fab7-47e7-8d3b-142108409fb1[1].png" usemap="#image-map"/> <span class="tooltiptext">NBA</span> </span>
      <map name="image-map">
        <area title="Click to go NBA.com" href="http://www.nba.com" shape="poly" coords="9,33,40,33,46,39,46,128,40,136,9,136,2,127,1,45" target="_blank" alt="Click to go NBA.com">
        <area title="Click to go the page About NBA" href="aboutNBA.asp" shape="poly" coords="55,133,75,133,76,75,92,133,112,132,113,37,94,36,94,94,77,36,55,36" target="" alt="Click to go the page About NBA">        
        <area title="Click to watch NBA video" href="https://www.youtube.com/watch?v=n5gHdMux9Ks" shape="poly" coords="145,76,159,73,161,60,156,51,146,49" target="_blank" alt="Click to watch NBA video">
        <area title="Click to watch the rules of basketball" href="https://www.youtube.com/watch?v=wYjp2zoqQrs&amp;t=6s" shape="poly" coords="145,90,160,91,163,104,158,116,145,117" target="_blank" alt="Click to watch the rules of basketball">
        <area title="Click to go to the Homepage" href="homePage.asp" shape="poly" coords="247,134,228,36,200,35,181,134,205,134,205,113,221,114,225,134" target="" alt="Click to go to the Homepage">
      </map>

       <table class="rostable" name="stand" id="stand">
            <tr><td class="rtitle2" colspan="100%" title="Standings and statistics of the NBA teams"><b>2017-18 Teams standings and statistics</b></td></tr>
            <tr><td class="teamArea" colspan="100%" title="West teams"><b>Western Conference</b></td></tr> 
            <%
                Set Conn = Server.CreateObject("ADODB.Connection")
                Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                
                ' Get data from the database depending on the value of the id in the URL
                strSQL = "SELECT * FROM west WHERE ID>=1 AND 15>=ID ORDER BY ID"
                Set rs = Conn.Execute(strSQL)
                                
                ' Write the data of the team
                Response.Write "<tr " & "id='rosth'" & "><td " & "title='The standing of the team'" & ">Team</td><td " & "title='Wins'" & ">W</td><td " & "title='Loss'" & ">L</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Turn overs'" & ">TOV</td><td " & "title='Steals'" & ">STL</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
                
                Do  
                Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("ID") & " , " & rs("TEAM") & " '" & "><table " & "class='teamTable'" & "><tr><td>" & rs("ID") & "</td><td><img " & "src='" & rs("Src") & "'" & "  " & "class='teamImg'" & "  " & "align='left'" & "/></td><td> " & rs("TEAM") & " </td></tr></table></td><td>" & rs("W") & "</td><td>" & rs("L") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("TOV") & "</td><td>" & rs("STL") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                rs.MoveNext
                Loop While Not rs.EOF   
                            
                Conn.Execute(strSQL)
                Conn.Close
                Set Conn = Nothing
            %>   
            <tr><td colspan="100%"><br/></td></tr>
            <tr><td class="teamArea" colspan="100%" title="East teams"><b>Eastern Conference</b></td></tr> 
            <%
                Set Conn = Server.CreateObject("ADODB.Connection")
                Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                
                ' Get data from the database depending on the value of the id in the URL
                strSQL = "SELECT * FROM east WHERE ID>=1 AND 15>=ID ORDER BY ID"
                Set rs = Conn.Execute(strSQL)
                                
                ' Write the data of the team
                Response.Write "<tr " & "id='rosth'" & "><td " & "title='The standing of the team'" & ">Team</td><td " & "title='Wins'" & ">W</td><td " & "title='Loss'" & ">L</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Turn overs'" & ">TOV</td><td " & "title='Steals'" & ">STL</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
                
                Do  
                Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("ID") & " , " & rs("TEAM") & " '" & "><table " & "class='teamTable'" & "><tr><td>" & rs("ID") & "</td><td><img " & "src='" & rs("Src") & "'" & "  " & "class='teamImg'" & "  " & "align='left'" & "/></td><td> " & rs("TEAM") & " </td></tr></table></td><td>" & rs("W") & "</td><td>" & rs("L") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("TOV") & "</td><td>" & rs("STL") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                rs.MoveNext
                Loop While Not rs.EOF   
                            
                Conn.Execute(strSQL)
                Conn.Close
                Set Conn = Nothing
            %>   
        </table>
        <br/>
     </div>
     <script>
        // When the user scrolls the page, execute myFunction 
        window.onscroll = function() {myFunction()};
        
        function myFunction() {
            var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
            var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
            var scrolled = (winScroll / height) * 100;
            document.getElementById("myBar").style.width = scrolled + "%";
        }
     </script>
    </body>
</html>
