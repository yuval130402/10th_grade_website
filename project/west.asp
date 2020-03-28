<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>NBA Basketball!!-west</title>
        <link rel="stylesheet" type="text/css" href="CSSproject.css"/>
        <script language="javascript" type="text/javascript" src="jsTeams.js"> </script>
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
            <a class="dropbtn">Teams</a>
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
     
      <table class="teams" name="tms" id="tms">
        <tr class="line">
            <td></td>
            <td><u><b>Pacific</b></u></td>
            <td><u><b>Southwest</b></u></td>
            <td><u><b>Northwest</b></u></td>
        </tr>
        <tr>
            <td class="num">1)</td>
            <td class="dudu"><img class="tm" src="images/west/gsw.png" onclick="teamNumber(1)"/> <span class="dname">Golden State Warriors</span></td>
            <td class="dudu"><img class="tm" src="images/west/houston-rockets-logo-vector[1].png" onclick="teamNumber(2)"/> <span class="dname">Houston Rockets</span></td>
            <td class="dudu"><img class="tm" src="images/west/POR.png" onclick="teamNumber(3)"/> <span class="dname">Portland Trail Blazers</span></td>
        </tr>
        <tr>
            <td class="num">2)</td>
            <td class="dudu"><img class="tm" src="images/west/LAC_logo.png" onclick="teamNumber(4)"/> <span class="dname">Los Angeles Clippers</span></td>
            <td class="dudu"><img class="tm" src="images/west/new-orleans-pelicans-vector-logo[1].png" onclick="teamNumber(5)"/> <span class="dname">New Orleance Pelicans</span></td>
            <td class="dudu"><img class="tm" src="images/west/okc.png" onclick="teamNumber(6)"/> <span class="dname">Oklahoma City Thunder</span></td>
        </tr>
        <tr>
            <td class="num">3)</td>
            <td class="dudu"><img class="tm" src="images/west/los-angeles-lakers-logo-vector.png" onclick="teamNumber(7)"/> <span class="dname">Los Angeles Lakers</span></td>
            <td class="dudu"><img class="tm" src="images/west/san-antonio-spurs-logo-vector[1].png" onclick="teamNumber(8)"/> <span class="dname">San Antonio Spurs</span></td>
            <td class="dudu"><img class="tm" src="images/west/uta.png" onclick="teamNumber(9)"/> <span class="dname">Utah Jazz</span></td>
        </tr>
        <tr>
            <td class="num">4)</td>
            <td class="dudu"><img class="tm" src="images/west/kings.png" onclick="teamNumber(10)"/> <span class="dname">Sacramento Kings</span></td>
            <td class="dudu"><img class="tm" src="images/west/Dallas-Mavericks-300x300[1].png" onclick="teamNumber(11)"/> <span class="dname">Dallas Mavericks</span></td>
            <td class="dudu"><img class="tm" src="images/west/min[1].png" onclick="teamNumber(12)"/> <span class="dname">Minnesota Timberwolves</span></td>
        </tr>
        <tr>
            <td class="num">5)</td>
            <td class="dudu"><img class="tm" src="images/west/1200px-Phoenix_Suns_logo.svg[1].png" onclick="teamNumber(13)"/> <span class="dname">Phoenix Suns</span></td>
            <td class="dudu"><img class="tm" src="images/west/memphis.png" onclick="teamNumber(14)"/> <span class="dname">Memphis Grizzlies</span></td>
            <td class="dudu"><img class="tm" src="images/west/den[1].png" onclick="teamNumber(15)"/> <span class="dname">Denver Nuggets</span></td>
        </tr>
    </table> 
    <!--golden state warriors-->
    <table class="nbat" name="1" id="1">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/gsw.png" align="left"/> 
                <br/><br/><br/> <b>Golden State <br/>Warriors</b><br/><span class="balance">58-54 &nbsp; &#124; &nbsp; 2nd in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 58-24</span> <br/> <span class="balance">70.7% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 34-18</span> <br/> <span class="balance">2nd in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 13-3</span> <br/> <span class="balance">1st in Pacific</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">29-12</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">29-12</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the GSW's starting five ">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=1 AND 5>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>

    <!--Houston Rockets-->
    <table class="nbat" name="2" id="2">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/houston-rockets-logo-vector[1].png" align="left"/> 
                <br/><br/><br/> <b>Houston <br/>Rockets</b><br/><span class="balance">65-17 &nbsp; &#124; &nbsp; 1st in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 65-17</span> <br/> <span class="balance">79.3% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 41-11</span> <br/> <span class="balance">1st in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 12-4</span> <br/> <span class="balance">1st in Southwest</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">34-7</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">31-10</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Rockets starting five ">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=6 AND 10>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>

    <!--Portland Trail Blazers-->
    <table class="nbat" name="3" id="3">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/POR.png" align="left"/> 
                <br/><br/><br/> <b>Portland <br/>Trail Blazers</b><br/><span class="balance">49-33 &nbsp; &#124; &nbsp; 3rd in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 49-33</span> <br/> <span class="balance">59.8% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 31-21</span> <br/> <span class="balance">3rd in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 9-7</span> <br/> <span class="balance">1st in Northwest</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">28-13</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">21-20</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Blazers starting five ">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=11 AND 15>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>

    <!--Los Angeles Clippers-->
    <table class="nbat" name="4" id="4">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/LAC_logo.png" align="left"/> 
                <br/><br/><br/> <b>Los Angeles  <br/>Clippers</b><br/><span class="balance">42-40 &nbsp; &#124; &nbsp; 10th in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 42-40</span> <br/> <span class="balance">51.2% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 24-28</span> <br/> <span class="balance">10th in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 12-4</span> <br/> <span class="balance">2nd in Pacific</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">22-19</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">20-21</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Clippers starting five ">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=16 AND 20>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>

    <!--New Orleance Pelicans-->
    <table class="nbat" name="5" id="5">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/new-orleans-pelicans-vector-logo[1].png" align="left"/> 
                <br/><br/><br/> <b>New Orleance <br/> Pelicans</b><br/><span class="balance">48-34 &nbsp; &#124; &nbsp; 6th in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 48-34</span> <br/> <span class="balance">58.5% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 27-25</span> <br/> <span class="balance">6th in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 9-7</span> <br/> <span class="balance">2nd in Southwest</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">24-17</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">24-17</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Pelicans starting five ">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=21 AND 25>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>

    <!--Oklahoma City Thunder-->
    <table class="nbat" name="6" id="6">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/okc.png" align="left"/> 
                <br/><br/><br/> <b>Oklahoma City <br/> Thunder</b><br/><span class="balance">48-34 &nbsp; &#124; &nbsp; 4th in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 48-34</span> <br/> <span class="balance">58.5% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 28-24</span> <br/> <span class="balance">4th in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 5-11</span> <br/> <span class="balance">2nd in Northwest</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">27-14</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">21-20</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the OKC's starting five">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=26 AND 30>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>
    
    <!--Los Angeles Lakers-->
    <table class="nbat" name="7" id="7">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/los-angeles-lakers-logo-vector.png" align="left"/> 
                <br/><br/><br/> <b>Los Angeles <br/> Lakers</b><br/><span class="balance">35-47 &nbsp; &#124; &nbsp; 11th in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 35-47</span> <br/> <span class="balance">42.7% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 19-33</span> <br/> <span class="balance">11th in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 6-10</span> <br/> <span class="balance">3rd in Pacific</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">20-21</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">15-26</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Lakers starting five">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=31 AND 35>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>
    
    <!--San Antonio Spurs-->
    <table class="nbat" name="8" id="8">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/san-antonio-spurs-logo-vector[1].png" align="left"/> 
                <br/><br/><br/> <b>San Antonio <br/> Spurs</b><br/><span class="balance">47-35 &nbsp; &#124; &nbsp; 7th in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 47-35</span> <br/> <span class="balance">57.3% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 29-23</span> <br/> <span class="balance">7th in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 9-7</span> <br/> <span class="balance">3rd in Southwest</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">33-8</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">14-27</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Spurs starting five">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=36 AND 40>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>

    <!--Utah Jazz-->
    <table class="nbat" name="9" id="9">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/uta.png" align="left"/> 
                <br/><br/><br/> <b>Utah <br/> Jazz</b><br/><span class="balance">48-34 &nbsp; &#124; &nbsp; 5th in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 48-34</span> <br/> <span class="balance">58.5% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 34-18</span> <br/> <span class="balance">5th in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 7-9</span> <br/> <span class="balance">3rd in Northwest</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">28-13</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">20-21</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Jazz starting five">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=41 AND 45>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>
    
    <!--Sacramento Kings-->
    <table class="nbat" name="10" id="10">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/kings.png" align="left"/> 
                <br/><br/><br/> <b>Sacramento <br/>Kings </b><br/><span class="balance">27-55 &nbsp; &#124; &nbsp; 12th in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 27-55</span> <br/> <span class="balance">32.9% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 14-38</span> <br/> <span class="balance">12th in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 5-11</span> <br/> <span class="balance">4th in Pacific</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">14-27</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">13-28</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Kings starting five">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=46 AND 50>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>
    
    <!--Dallas Mavericks-->
    <table class="nbat" name="11" id="11">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/Dallas-Mavericks-300x300[1].png" align="left"/> 
                <br/><br/><br/> <b>Dallas <br/>Mavericks </b><br/><span class="balance">24-58 &nbsp; &#124; &nbsp; 13th in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 24-58</span> <br/> <span class="balance">29.3% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 14-38</span> <br/> <span class="balance">13th in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 5-11</span> <br/> <span class="balance">4th in Southwest</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">15-26</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">9-32</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Mavericks starting five">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=51 AND 55>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>
    
    <!--Minnesota Timberwolves-->
    <table class="nbat" name="12" id="12">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/min[1].png" align="left"/> 
                <br/><br/><br/> <b>Minnesota <br/>Timberwolves </b><br/><span class="balance">47-35 &nbsp; &#124; &nbsp; 8th in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 47-35</span> <br/> <span class="balance">57.3% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 34-18</span> <br/> <span class="balance">8th in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 10-6</span> <br/> <span class="balance">4th in Northwest</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">30-11</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">17-24</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Timberwolves starting five">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=56 AND 60>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>

    <!--Phoenix Suns-->
    <table class="nbat" name="13" id="13">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/1200px-Phoenix_Suns_logo.svg[1].png" align="left"/> 
                <br/><br/><br/> <b>Phoenix <br/>Suns </b><br/><span class="balance">21-61 &nbsp; &#124; &nbsp; 15th in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 21-61</span> <br/> <span class="balance">25.6% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 15-37</span> <br/> <span class="balance">15th in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 4-12</span> <br/> <span class="balance">5th in Pacific</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">10-31</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">11-30</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Suns starting five">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=61 AND 65>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>
    
    <!--Memphis Grizzlies-->
    <table class="nbat" name="14" id="14">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/memphis.png" align="left"/> 
                <br/><br/><br/> <b>Memphis <br/>Grizzlies </b><br/><span class="balance">22-60 &nbsp; &#124; &nbsp; 14th in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 22-60</span> <br/> <span class="balance">26.8% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 18-34</span> <br/> <span class="balance">14th in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 5-11</span> <br/> <span class="balance">5th in Southwest</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">16-25</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">6-35</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Grizzlies starting five">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=66 AND 70>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>
    
    <!--Denver Nuggets-->
    <table class="nbat" name="15" id="15">
        <tr><td class="goBack" colspan="100%"><br/><a href="West.asp" class="goBackLink">Click here to go back to the West-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/west/den[1].png" align="left"/> 
                <br/><br/><br/> <b>Denver <br/>Nuggets </b><br/><span class="balance">46-36 &nbsp; &#124; &nbsp; 9th in Western</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 46-36</span> <br/> <span class="balance">56.1% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 28-24</span> <br/> <span class="balance">9th in Western</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 9-7</span> <br/> <span class="balance">5th in Northwest</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">31-10</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">15-26</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Nuggets starting five">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=71 AND 75>=ID ORDER BY ID"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "title='Name, position and shirt number of the player'" & ">Player</td><td " & "title='Games played'" & ">GP</td><td " & "title='Points'" & ">PTS</td><td " & "title='Rebounds'" & ">REB</td><td " & "title='Assists'" & ">AST</td><td " & "title='Steals'" & ">STL</td><td " & "title='Turn overs'" & ">TO</td><td " & "title='Field goal%'" & ">FG%</td><td " & "title='Three point%'" & ">3P%</td></tr>"
        
                    Do  
                    Response.Write "<tr><td  " & "class='playerTxt'" & "   " & "title='" & rs("playerName") & " , " & rs("tNumber") & " , " & rs("Position") & "'" & "><img " & "src='" & rs("SrcImage") & "'" & "  " & "class='playerImg'" & "  " & "align='left'" & "/><br/> " & rs("playerName") & " <br/> " & rs("tNumber") & " <b>&#8231;</b> " & rs("Position") & "</td><td>" & rs("GP") & "</td><td>" & rs("PTS") & "</td><td>" & rs("REB") & "</td><td>" & rs("AST") & "</td><td>" & rs("STL") & "</td><td>" & rs("TO") & "</td><td>" & rs("FG") & "</td><td>" & rs("3P") & "</td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
                </table>
            </td>            
        </tr> 
    </table>
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