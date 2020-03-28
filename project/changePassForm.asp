<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>NBA Basketball!!-Change password</title>
        <link rel="stylesheet" type="text/css" href="CSSproject.css"/>
        <script>
            function checkPassword() {
                if (document.getElementById("conf").value!=document.getElementById("password").value) {
                   conf.setCustomValidity('Confirm password and password must be matching');
                   conf.value="";
                   password.value="";
                } 
                else {
                    conf.setCustomValidity('');
                    password.setCustomValidity('');
                }
            }
        </script>
    </head>
    <body>
        <% 
        If Session("log")="false" Then
        Session.Contents.Remove("log")
        End If
        %>
        <% 
            Dim dis
            Dim sid
            If Session("log")="true" Then
                dis = "unset"
                sid = "none"
            Else
                dis = "none"
                sid = "unset"
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
            <li style="float:right;display:<%=sid%>;"><a href="Login.asp">Login</a></li>
            <li style="float:right;display:<%=dis%>;"><a href="abandon10.asp">Log-out</a></li>
        </ul>
        <div style="padding:20px;margin-top:30px;height:1500px;">
        <span class="tooltip"><img name="nba" id="nba" src="images/655e9e5e-fab7-47e7-8d3b-142108409fb1[1].png" usemap="#image-map"/> <span class="tooltiptext">NBA</span> </span>
        <map name="image-map">
            <area title="Click to go NBA.com" href="http://www.nba.com" shape="poly" coords="9,33,40,33,46,39,46,128,40,136,9,136,2,127,1,45" target="_blank" alt="Click to go NBA.com">
            <area title="Click to go the page About NBA" href="aboutNBA.asp" shape="poly" coords="55,133,75,133,76,75,92,133,112,132,113,37,94,36,94,94,77,36,55,36" target="" alt="Click to go the page About NBA">        
            <area title="Click to watch NBA video" href="https://www.youtube.com/watch?v=n5gHdMux9Ks" shape="poly" coords="145,76,159,73,161,60,156,51,146,49" target="_blank" alt="Click to watch NBA video">
            <area title="Click to watch the rules of basketball" href="https://www.youtube.com/watch?v=wYjp2zoqQrs&amp;t=6s" shape="poly" coords="145,90,160,91,163,104,158,116,145,117" target="_blank" alt="Click to watch the rules of basketball">
            <area title="Click to go to the Homepage" href="homePage.asp" shape="poly" coords="247,134,228,36,200,35,181,134,205,134,205,113,221,114,225,134" target="" alt="Click to go to the Homepage">
        </map>
        
         <br/><br/>
        
        <center class = "fcenter">
            <form action="changePass.asp" method="get">
                <table>
                    <tr>
                        <th colspan="2">
                            <div name="logTitle" id="logTitle">
                                Change Password
                            </div>
                        </th>
                    </tr>
                    <tr>
                        <td class="tdChange">
                            <b>Enter your username:</b>
                        </td>
                        <td class="tdChange">
                            <input type="text" name="username" id="username" class = "formInput" placeholder="Username" pattern="(?=.*[A-Za-z]).{4,16}" required maxlength="16" title="Must contain your username">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="updErrors" id="erorChange"> *Username does not exist </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdChange">
                           <b> Enter new password:</b>
                        </td>
                        <td class="tdChange">
                            <input type="password" name="password" id="password" class = "formInput" placeholder="Password" pattern="(?=.*\d)(?=.*[A-Za-z]).{6,16}" required maxlength="16" title="Contain your new password" value="<% Response.write(Request.QueryString("p1")) %>">
                        </td>
                    </tr>
                    <tr>
                        <td class="tdChange">
                            <b>Confirm the password:</b>
                        </td>
                        <td class="tdChange">
                            <input class = "formInput" type="password" name="conf" id="conf" placeholder = "Same password"  pattern="(?=.*\d)(?=.*[A-Za-z]).{6,16}" maxlength="16" title="Must contain the same password"  required value="<% Response.write(Request.QueryString("p2")) %>"/>
                        </td>
                    </tr>
                
                    <tr>
                        <th colspan="2" class="tdChange">
                            <input type="submit" value="Change" class="buttonLog" name="sub" id="sub" onclick="checkPassword()">
                        </th>
                    </tr>
                    <tr>
                        <td style="text-align:center" colspan="2">
                            <a class="tosign" name="linK" id="linK" href="Login.asp">
                                <b> Click here to return to the login page</b>
                            </a>
                        </td>
                    </tr>
                </table>
            </form>
        </center>
        <%
            If (request.QueryString("changePass")= "nouserDB") Then
                response.write("<script>document.getElementById('erorChange').style.display='block'</script>")
            End If
        %>
        </div>
    </body>
</html>