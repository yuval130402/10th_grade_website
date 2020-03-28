<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>NBA Basketball!!-east</title>
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
     
      <table class="teams"  name="tms" id="tms">
        <tr class="line">
            <td></td>
            <td><u><b>Atlantic</b></u></td>
            <td><u><b>Central</b></u></td>
            <td><u><b>Southeast</b></u></td>
        </tr>
        <tr>
            <td class="num">1)</td>
            <td class="dudu"><img class="tm" src="images/east/raptors-logo-preview[1].png" onclick="teamNumber(16)"/> <span class="dname">Toronto Raptors</span></td>
            <td class="dudu"><img class="tm" src="images/east/cavs.png" onclick="teamNumber(17)"/> <span class="dname">Cleveland Cavaliers</span></td>
            <td class="dudu"><img class="tm" src="images/east/miami.png" onclick="teamNumber(18)"/> <span class="dname">Miami Heat</span></td>
        </tr>
        <tr>
            <td class="num">2)</td>
            <td class="dudu"><img class="tm" src="images/east/boston.png" onclick="teamNumber(19)"/> <span class="dname">Boston Celtics</span></td>
            <td class="dudu"><img class="tm" src="images/east/2000px-Indiana_Pacers_logo.svg[1].png" onclick="teamNumber(20)"/> <span class="dname">Indiana Pacers</span></td>
            <td class="dudu"><img class="tm" src="images/east/washington-wizards.png" onclick="teamNumber(21)"/> <span class="dname">Washington Wizards</span></td>
        </tr>
        <tr>
            <td class="num">3)</td>
            <td class="dudu"><img class="tm" src="images/east/philadelphia-76ers.png" onclick="teamNumber(22)"/> <span class="dname">Philadelphia 76ers</span></td>
            <td class="dudu"><img class="tm" src="images/east/milwaukee-bucks-1.png" onclick="teamNumber(23)"/> <span class="dname">Milwaukee Bucks</span></td>
            <td class="dudu"><img class="tm" src="images/east/nba-charlotte-hornets.png" onclick="teamNumber(24)"/> <span class="dname">Charlotte Hornets</span></td>
        </tr>
        <tr>
            <td class="num">4)</td>
            <td class="dudu"><img class="tm" src="images/east/nyknicks.png" onclick="teamNumber(25)"/> <span class="dname">New York Knicks</span></td>
            <td class="dudu"><img class="tm" src="images/east/Detroit_Pistons_newlogo.png" onclick="teamNumber(26)"/> <span class="dname">Detroit Pistons</span></td>
            <td class="dudu"><img class="tm" src="images/east/orl[1].png" onclick="teamNumber(27)"/> <span class="dname">Orlando Magic</span></td>
        </tr>
        <tr>
            <td class="num">5)</td>
            <td class="dudu"><img class="tm" src="images/east/Brooklyn-Nets[1].png" onclick="teamNumber(28)"/> <span class="dname">Brooklyn Nets</span></td>
            <td class="dudu"><img class="tm" src="images/east/chicago-bulls.png" onclick="teamNumber(29)"/> <span class="dname">Chicago Bulls</span></td>
            <td class="dudu"><img class="tm" src="images/east/atlanta-hawks.png" onclick="teamNumber(30)"/> <span class="dname">Atlanta Hawks</span></td>
        </tr>
    </table> 

    <!--Toronto Raptors-->
    <table class="nbat" name="16" id="16">
        <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/east/raptors-logo-preview[1].png" align="left"/> 
                <br/><br/><br/> <b>Toronto <br/>Raptors</b><br/><span class="balance">59-23 &nbsp; &#124; &nbsp; 1st in Eastern</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 59-23</span> <br/> <span class="balance">72.0% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 40-12</span> <br/> <span class="balance">1st in Eastern</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 12-4</span> <br/> <span class="balance">1st in Atlantic</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">34-7</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">25-16</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Raptors starting five ">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=76 AND 80>=ID ORDER BY ID"
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

    <!--Cleveland Cavaliers-->
    <table class="nbat" name="17" id="17">
        <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/east/cavs.png" align="left"/> 
                <br/><br/><br/> <b>Cleveland <br/>Cavaliers</b><br/><span class="balance">50-32 &nbsp; &#124; &nbsp; 4th in Eastern</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 50-32</span> <br/> <span class="balance">61.0% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 35-17</span> <br/> <span class="balance">4th in Eastern</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 11-5</span> <br/> <span class="balance">1st in Central</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">29-12</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">21-20</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Cavaliers starting five ">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=81 AND 85>=ID ORDER BY ID"
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

    <!--Miami Heat-->
    <table class="nbat" name="18" id="18">
        <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/east/miami.png" align="left"/> 
                <br/><br/><br/> <b>Miami <br/>Heat</b><br/><span class="balance">44-38 &nbsp; &#124; &nbsp; 6th in Eastern</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 44-38</span> <br/> <span class="balance">53.7% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 31-21</span> <br/> <span class="balance">6th in Eastern</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 11-5</span> <br/> <span class="balance">1st in Southeast</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">26-15</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">18-23</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Heat starting five ">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=86 AND 90>=ID ORDER BY ID"
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
    
    <!--Boston Celtics-->
    <table class="nbat" name="19" id="19">
        <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/east/boston.png" align="left"/> 
                <br/><br/><br/> <b>Boston <br/>Celtics </b><br/><span class="balance">55-27 &nbsp; &#124; &nbsp; 2nd in Eastern</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 55-27</span> <br/> <span class="balance">67.1% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 33-19</span> <br/> <span class="balance">2nd in Eastern</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 12-4</span> <br/> <span class="balance">2nd in Atlantic</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">27-14</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">28-13</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Celtics starting five ">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=91 AND 95>=ID ORDER BY ID"
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
    
    <!--Indiana Pacers-->
    <table class="nbat" name="20" id="20">
        <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/east/2000px-Indiana_Pacers_logo.svg[1].png" align="left"/> 
                <br/><br/><br/> <b>Indiana <br/> Pacers </b><br/><span class="balance">48-34 &nbsp; &#124; &nbsp; 5th in Eastern</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 48-34</span> <br/> <span class="balance">58.5% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 32-20</span> <br/> <span class="balance">5th in Eastern</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 10-6</span> <br/> <span class="balance">2nd in Central</span></td>
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
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Pacers starting five ">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=96 AND 100>=ID ORDER BY ID"
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
    
    <!--Washington Wizards-->
    <table class="nbat" name="21" id="21">
        <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/east/washington-wizards.png" align="left"/> 
                <br/><br/><br/> <b>Washington <br/> Wizards </b><br/><span class="balance">43-39 &nbsp; &#124; &nbsp; 8th in Eastern</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 43-39</span> <br/> <span class="balance">52.4% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 28-24</span> <br/> <span class="balance">8th in Eastern</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 8-8</span> <br/> <span class="balance">2nd in Southeast</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">23-18</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">20-21</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the Wizards starting five ">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=101 AND 105>=ID ORDER BY ID"
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
    
    <!--Philadelphia 76ers-->
    <table class="nbat" name="22" id="22">
        <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
        <tr>
            <td class="ft"><img class="tmPage" src="images/east/philadelphia-76ers.png" align="left"/> 
                <br/><br/><br/> <b>Philadelphia <br/> 76ers </b><br/><span class="balance">52-30 &nbsp; &#124; &nbsp; 3rd in Eastern</span>
            </td>
            <td>
                <table class="records">
                    <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                    <tr>
                        <td class="abteam">Total <br/> <span class="wl"> 52-30</span> <br/> <span class="balance">63.4% Win</span> </td>
                        <td class="abteam"> Conference <br/><span class="wl"> 34-18</span> <br/> <span class="balance">3rd in Eastern</span>  </td>
                        <td class="abteam">Division <br/><span class="wl"> 9-7</span> <br/> <span class="balance">3rd in Atlantic</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="abteam"> Home <span class="wl">30-11</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">22-19</span></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
        <tr>
             <td colspan="2">
                <table class="rostable">
                    <tr><td class="rtitle2" colspan="100%" title="Statistics of the 76ers starting five ">2017-18 Player Statistics</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM players WHERE ID>=106 AND 110>=ID ORDER BY ID"
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
    
        <!--Milwaukee Bucks-->
        <table class="nbat" name="23" id="23">
            <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
            <tr>
                <td class="ft"><img class="tmPage" src="images/east/milwaukee-bucks-1.png" align="left"/> 
                    <br/><br/><br/> <b>Milwaukee <br/> Bucks </b><br/><span class="balance">44-38 &nbsp; &#124; &nbsp; 7th in Eastern</span>
                </td>
                <td>
                    <table class="records">
                        <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                        <tr>
                            <td class="abteam">Total <br/> <span class="wl"> 44-38</span> <br/> <span class="balance">53.7% Win</span> </td>
                            <td class="abteam"> Conference <br/><span class="wl"> 27-25</span> <br/> <span class="balance">7th in Eastern</span>  </td>
                            <td class="abteam">Division <br/><span class="wl"> 6-10</span> <br/> <span class="balance">3rd in Central</span></td>
                        </tr>
                        <tr>
                            <td colspan="3" class="abteam"> Home <span class="wl">25-16</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">19-22</span></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
            <tr>
                <td colspan="2">
                    <table class="rostable">
                        <tr><td class="rtitle2" colspan="100%" title="Statistics of the Bucks starting five ">2017-18 Player Statistics</td></tr> 
                        <%
                        Set Conn = Server.CreateObject("ADODB.Connection")
                        Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                        
                    
                        ' Get data from the database depending on the value of the id in the URL
                        strSQL = "SELECT * FROM players WHERE ID>=111 AND 115>=ID ORDER BY ID"
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
        
        <!--Charlotte Hornets-->
        <table class="nbat" name="24" id="24">
            <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
            <tr>
                <td class="ft"><img class="tmPage" src="images/east/nba-charlotte-hornets.png" align="left"/> 
                    <br/><br/><br/> <b>Charlotte <br/> Hornets </b><br/><span class="balance">36-46 &nbsp; &#124; &nbsp; 10th in Eastern</span>
                </td>
                <td>
                    <table class="records">
                        <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                        <tr>
                            <td class="abteam">Total <br/> <span class="wl"> 36-46</span> <br/> <span class="balance">43.9% Win</span> </td>
                            <td class="abteam"> Conference <br/><span class="wl"> 22-30</span> <br/> <span class="balance">10th in Eastern</span>  </td>
                            <td class="abteam">Division <br/><span class="wl"> 11-5</span> <br/> <span class="balance">3rd in Southeast</span></td>
                        </tr>
                        <tr>
                            <td colspan="3" class="abteam"> Home <span class="wl">21-20</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">15-26</span></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
            <tr>
                 <td colspan="2">
                    <table class="rostable">
                        <tr><td class="rtitle2" colspan="100%" title="Statistics of the Hornets starting five ">2017-18 Player Statistics</td></tr> 
                        <%
                        Set Conn = Server.CreateObject("ADODB.Connection")
                        Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                        
                    
                        ' Get data from the database depending on the value of the id in the URL
                        strSQL = "SELECT * FROM players WHERE ID>=116 AND 120>=ID ORDER BY ID"
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
      
        <!--New York Knicks-->
        <table class="nbat" name="25" id="25">
                <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
                <tr>
                    <td class="ft"><img class="tmPage" src="images/east/nyknicks.png" align="left"/> 
                        <br/><br/><br/> <b> New York <br/> Knicks </b><br/><span class="balance">29-53 &nbsp; &#124; &nbsp; 11th in Eastern</span>
                    </td>
                    <td>
                        <table class="records">
                            <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                            <tr>
                                <td class="abteam">Total <br/> <span class="wl"> 29-53</span> <br/> <span class="balance">35.4% Win</span> </td>
                                <td class="abteam"> Conference <br/><span class="wl"> 17-35</span> <br/> <span class="balance">11th in Eastern</span>  </td>
                                <td class="abteam">Division <br/><span class="wl"> 6-10</span> <br/> <span class="balance">4th in Atlantic</span></td>
                            </tr>
                            <tr>
                                <td colspan="3" class="abteam"> Home <span class="wl">19-22</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">10-31</span></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
                <tr>
                     <td colspan="2">
                        <table class="rostable">
                            <tr><td class="rtitle2" colspan="100%" title="Statistics of the Knicks starting five ">2017-18 Player Statistics</td></tr> 
                            <%
                            Set Conn = Server.CreateObject("ADODB.Connection")
                            Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                            
                        
                            ' Get data from the database depending on the value of the id in the URL
                            strSQL = "SELECT * FROM players WHERE ID>=121 AND 125>=ID ORDER BY ID"
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
            
        <!--Detroit Pistons-->
        <table class="nbat" name="26" id="26">
            <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
            <tr>
                <td class="ft"><img class="tmPage" src="images/east/Detroit_Pistons_newlogo.png" align="left"/> 
                    <br/><br/><br/> <b> Detroit <br/> Pistons </b><br/><span class="balance">39-43 &nbsp; &#124; &nbsp; 9th in Eastern</span>
                </td>
                <td>
                    <table class="records">
                        <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                        <tr>
                            <td class="abteam">Total <br/> <span class="wl"> 39-43</span> <br/> <span class="balance">47.6% Win</span> </td>
                            <td class="abteam"> Conference <br/><span class="wl"> 24-28</span> <br/> <span class="balance">9th in Eastern</span>  </td>
                            <td class="abteam">Division <br/><span class="wl"> 9-7</span> <br/> <span class="balance">4th in Central</span></td>
                        </tr>
                        <tr>
                            <td colspan="3" class="abteam"> Home <span class="wl">25-16</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">14-27</span></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
            <tr>
                <td colspan="2">
                    <table class="rostable">
                        <tr><td class="rtitle2" colspan="100%" title="Statistics of the Pistons starting five ">2017-18 Player Statistics</td></tr> 
                        <%
                        Set Conn = Server.CreateObject("ADODB.Connection")
                        Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                        
                    
                        ' Get data from the database depending on the value of the id in the URL
                        strSQL = "SELECT * FROM players WHERE ID>=126 AND 130>=ID ORDER BY ID"
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
        
        <!--Orlando Magic-->
        <table class="nbat" name="27" id="27">
            <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
            <tr>
                <td class="ft"><img class="tmPage" src="images/east/orl[1].png" align="left"/> 
                    <br/><br/><br/> <b> Orlando <br/> Magic </b><br/><span class="balance">25-57 &nbsp; &#124; &nbsp; 14th in Eastern</span>
                </td>
                <td>
                    <table class="records">
                        <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                        <tr>
                            <td class="abteam">Total <br/> <span class="wl"> 25-57</span> <br/> <span class="balance">30.5% Win</span> </td>
                            <td class="abteam"> Conference <br/><span class="wl"> 15-37</span> <br/> <span class="balance">14th in Eastern</span>  </td>
                            <td class="abteam">Division <br/><span class="wl"> 5-11</span> <br/> <span class="balance">4th in Southeast</span></td>
                        </tr>
                        <tr>
                            <td colspan="3" class="abteam"> Home <span class="wl">17-24</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">8-33</span></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
            <tr>
                <td colspan="2">
                    <table class="rostable">
                        <tr><td class="rtitle2" colspan="100%" title="Statistics of the Magic starting five ">2017-18 Player Statistics</td></tr> 
                        <%
                        Set Conn = Server.CreateObject("ADODB.Connection")
                        Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                        
                    
                        ' Get data from the database depending on the value of the id in the URL
                        strSQL = "SELECT * FROM players WHERE ID>=131 AND 135>=ID ORDER BY ID"
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
        
        <!--Brooklyn Nets-->
        <table class="nbat" name="28" id="28">
            <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
            <tr>
                <td class="ft"><img class="tmPage" src="images/east/Brooklyn-Nets[1].png" align="left"/> 
                    <br/><br/><br/> <b> Brooklyn <br/> Nets </b><br/><span class="balance">28-54 &nbsp; &#124; &nbsp; 12th in Eastern</span>
                </td>
                <td>
                    <table class="records">
                        <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                        <tr>
                            <td class="abteam">Total <br/> <span class="wl"> 28-54</span> <br/> <span class="balance">34.1% Win</span> </td>
                            <td class="abteam"> Conference <br/><span class="wl"> 19-33</span> <br/> <span class="balance">12th in Eastern</span>  </td>
                            <td class="abteam">Division <br/><span class="wl"> 1-15</span> <br/> <span class="balance">5th in Atlantic</span></td>
                        </tr>
                        <tr>
                            <td colspan="3" class="abteam"> Home <span class="wl">15-26</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">13-28</span></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
            <tr>
                <td colspan="2">
                    <table class="rostable">
                        <tr><td class="rtitle2" colspan="100%" title="Statistics of the Nets starting five ">2017-18 Player Statistics</td></tr> 
                        <%
                        Set Conn = Server.CreateObject("ADODB.Connection")
                        Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                        
                    
                        ' Get data from the database depending on the value of the id in the URL
                        strSQL = "SELECT * FROM players WHERE ID>=136 AND 140>=ID ORDER BY ID"
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
        
        <!--Chicago Bulls-->
        <table class="nbat" name="29" id="29">
            <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
            <tr>
                <td class="ft"><img class="tmPage" src="images/east/chicago-bulls.png" align="left"/> 
                    <br/><br/><br/> <b> Chicago <br/> Bulls </b><br/><span class="balance">27-55 &nbsp; &#124; &nbsp; 13th in Eastern</span>
                </td>
                <td>
                    <table class="records">
                        <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                        <tr>
                            <td class="abteam">Total <br/> <span class="wl"> 27-55</span> <br/> <span class="balance">32.9% Win</span> </td>
                            <td class="abteam"> Conference <br/><span class="wl"> 21-31</span> <br/> <span class="balance">13th in Eastern</span>  </td>
                            <td class="abteam">Division <br/><span class="wl"> 4-12</span> <br/> <span class="balance">5th in Central</span></td>
                        </tr>
                        <tr>
                            <td colspan="3" class="abteam"> Home <span class="wl">17-24</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">10-31</span></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
            <tr>
                <td colspan="2">
                    <table class="rostable">
                        <tr><td class="rtitle2" colspan="100%" title="Statistics of the Bulls starting five ">2017-18 Player Statistics</td></tr> 
                        <%
                        Set Conn = Server.CreateObject("ADODB.Connection")
                        Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                        
                    
                        ' Get data from the database depending on the value of the id in the URL
                        strSQL = "SELECT * FROM players WHERE ID>=141 AND 145>=ID ORDER BY ID"
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
        
        <!--Atlanta Hawks-->
        <table class="nbat" name="30" id="30">
            <tr><td class="goBack" colspan="100%"><br/><a href="east.asp" class="goBackLink">Click here to go back to the East-Team page</a><br/></td></tr>
            <tr>
                <td class="ft"><img class="tmPage" src="images/east/atlanta-hawks.png" align="left"/> 
                    <br/><br/><br/> <b> Atlanta <br/> Hawks </b><br/><span class="balance">24-58 &nbsp; &#124; &nbsp; 15th in Eastern</span>
                </td>
                <td>
                    <table class="records">
                        <tr><td colspan="3" class="abteam"><span class="rtitle">Records</span></td></tr>
                        <tr>
                            <td class="abteam">Total <br/> <span class="wl"> 24-58</span> <br/> <span class="balance">29.3% Win</span> </td>
                            <td class="abteam"> Conference <br/><span class="wl"> 12-40</span> <br/> <span class="balance">15th in Eastern</span>  </td>
                            <td class="abteam">Division <br/><span class="wl"> 5-11</span> <br/> <span class="balance">5th in Southeast</span></td>
                        </tr>
                        <tr>
                            <td colspan="3" class="abteam"> Home <span class="wl">16-25</span> &nbsp;&nbsp;&nbsp; Away <span class="wl">8-33</span></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr><td colspan="100%" class="rtitle3"><u>Roster</u></td></tr>
            <tr>
                <td colspan="2">
                    <table class="rostable">
                        <tr><td class="rtitle2" colspan="100%" title="Statistics of the Hawks starting five ">2017-18 Player Statistics</td></tr> 
                        <%
                        Set Conn = Server.CreateObject("ADODB.Connection")
                        Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("players.mdb")
                        
                    
                        ' Get data from the database depending on the value of the id in the URL
                        strSQL = "SELECT * FROM players WHERE ID>=146 AND 150>=ID ORDER BY ID"
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