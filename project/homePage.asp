<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>NBA Basketball!!-Homepage</title>
        <link rel="stylesheet" type="text/css" href="CSSproject.css"/>
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
    </head>
    <body onunload="window.location.href='abandon10.asp';">
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
        <li><a href="Standing.asp" style="display:<%=dis%>;">Standings</a></li>
        <li><a href="Video.asp" style="display:<%=dis%>;">Video</a></li>
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
        <span style="display:<%=adm1%>;">
            <h1><b><u>welcome<span style="display:<%=dis%>;">
                <%
                    If Session("log")="true" Then
                    Response.Write(Session("firstname"))
                    End If
                %>
                -
                <%
                    If Session("log")="true" Then
                    Response.Write(Session("lastname"))
                    End If
                %>
                </span> 
                to my basketball website</u>!!</b></h1>
            <h2 style="display:<%=dis%>;" class="headcolor"> You are now logged in! &#128526;</h2>
            <h2 style="display:<%=sid%>;" class="headcolor"> You are now logged out.</h2>
            <h2>By pressing the button:</h2>
            <ol>
                <dl>
                    <li><dt>Teams-</dt>
                    <dd>To get information about NBA teams and the basketball players in each team. <br/> 
                        On the screen will be displayed 30 team icons divided into two regions (East and West). <br/> 
                        Clicking on each team will display information about the team and its current players. </dd></li>
                    <li><dt>Standings-</dt>
                    <dd> To get the statistics for each team in each region and the position the team finished <br/> in the end of 2017-2018 season.
                        On this page, you can compare statistics of different teams.</dd></li>
                    <li><dt>Video-</dt>
                    <dd> Watch all kinds of videos of the best NBA players from the past and highlights of those who<br/> play in the NBA nowadays. <br/> </dd></li>
                    <li><dt>Contact-</dt>
                    <dd> Some information and details about me. <br/> On this page you can contact me, to get help with whatever you need. <br/>
                        Ask me everything you want to know about the site, a problem you would like me to improve <br/> on the site or 
                        recommendations for other innovations you would like to have on the site.</dd></li>
                    <li><dt><span style="display:<%=sid%>;">Login-</span><span style="display:<%=dis%>;">Log-out-</span></dt>
                    <dd><span style="display:<%=sid%>;">To enter your username and password so you can connect to the site, <br/> and if you don't have a user you can sign-up.</span>
                    <span style="display:<%=dis%>;">To disconnect from your user and leave the site or log in again.</span></dd></li>
                </dl>
            </ol>
        </span>
        <span class="welcomAdmFont" style="display:<%=adm2%>;">
            <h1><b>Welcome<span style="display:<%=dis%>;">
            <%
                If Session("log")="true" Then
                Response.Write(Session("firstname"))
                End If
            %>
            
            <%
                If Session("log")="true" Then
                Response.Write(Session("lastname"))
                End If
            %>
            </span> 
             to your basketball website!!</b></h1>
            <h2 style="display:<%=dis%>;" class="headcolor"><span class="adminstyle"><i> Administrator,  </span> you are now logged in! </i>&#128526;</h2>
            <h2 style="display:<%=sid%>;" class="headcolor"> You are now logged out.</h2>
            <h2 style="display:<%=dis%>;"  class="headcolor">The details of your user:</h2>
            <% 
                Set Conn = Server.CreateObject("ADODB.Connection")
                Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("rs.mdb")
                dim strSQL
                dim str
                dim admuser
                admuser = Session("username")
                str="<table class='admcontable'>"
                strSQL="SELECT * FROM users WHERE Users = '" &admuser& "'"
                set rs=Conn.Execute(strSQL)
                str=str& "<tr " & "id='rosth'" & "><td " & "class='contadm'" & " " & "title='First name'" & ">Firstname</td><td " & "class='contadm'" & " " & "title='Last name'" & ">Lastname</td><td " & "class='contadm'" & " " & "title='Username'" & ">Username</td><td " & "class='contadm'" & " " & "title='Password'" & ">Password</td><td " & "class='contadm'" & " " & "title='Gender'" & ">Gender</td><td " & "title='Email-address'" & ">Email</td><td " & "title='Administrator'" & ">Admin</td></tr>" 
                str=str& "<tr><td>"&rs("FirstName")&"</td>"
                str=str& " <td>" & rs("LastName") & "</td>"
                str=str& " <td>" & rs("Users") & "</td>"
                str=str& " <td>" & rs("Password") & "</td>"
                str=str& " <td>" & rs("Gender") & "</td>"
                str=str& " <td>" & rs("Email") & "</td>"
                str=str& " <td>" & rs("admin") & "</td></tr>"
                str=str&"</table>"
                Conn.Close
                Set Conn = Nothing

                response.write("<p>" & str & "</p>")
            %>
        </span>
     </div>
    </body>
</html>