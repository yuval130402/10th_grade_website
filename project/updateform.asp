<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>NBA Basketball!!-Update Users</title>
        <link rel="stylesheet" type="text/css" href="CSSproject.css"/>
        <script>
            function deleteUser(a){
                var delUser=confirm("Are you sure you want to delete the user: "+a+" ?");
                if (delUser==true)
                    window.location.href ="deletecode.asp?userToDelete="+a;
            }
            function creatAdmin(a){
                var admin=confirm("Are you sure you want to make the user: "+a+" as a Administrator?");
                if (admin==true)
                    window.location.href ="makeadmincode.asp?userToAdmin="+a;
            }
        </script>
    </head>
    <body onunload="window.location.href='abandon10.asp';">
         <% 
            If Session("admin") <>"true" Then
                If(Session("log")="true") Then
                    Response.Redirect "homePage.asp" 
                 Else
                    Response.Redirect "Login.asp"  
                End If            
            End If
        %>
        <% 
            If Session("admin")="false" Then
                Response.redirect "Login.asp"
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
  
        <form id="updform" name="updform" action="updateUser.asp" method="get">     
            <table name="updateTable" id="updateTable">
                <tr>
                    <th colspan="2">
                        <div name="logTitle" id="logTitle" title="Update users">
                            <b>Update Form</b>
                        </div>
                    </th>
                </tr>
                <tr>
                    <td style="color:#FA6806; font-size:40px; font-family:Impact;"><b>&nbsp;<u>Stage 1</u>: Enter the last username</b><br/></td>
                </tr>
                <tr>
                    <td><br/>
                        &nbsp;<input class = "formInput" type="text" name="last" id="last" placeholder = "Last username" pattern="(?=.*[A-Za-z]).{4,16}" maxlength="16" title="Must contain at least one letter, between 4-16 characters" required value="<% Response.write(Request.QueryString("l")) %>"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="updErrors" id="eror11"> *Username does not exist </div>
                        <hr>
                    </td>
                </tr>
                <tr>
                    <td style="color:#FA6806; font-size:40px; font-family:Impact;"><b>&nbsp;<u>Stage 2</u>: Change what you want to update in this user</b><br/></td>
                </tr>
                <tr>
                    <td><br/><b>&nbsp;Change name</b><br/>
                        &nbsp;<input class = "formInput" type="text" name="firstname" id="firstname" placeholder = "Firstname" pattern="[A-Za-z]{2,14}" maxlength="14" title="Must contain letters, between 2-14 characters" value="<% Response.write(Request.QueryString("z1")) %>"/>&nbsp;&nbsp;&nbsp;
                        <input class = "formInput" type="text" name="lastname" id="lastname" placeholder = "Lastname" pattern="[A-Za-z]{2,14}" maxlength="14" title="Must contain letters, between 2-14 characters"  value="<% Response.write(Request.QueryString("z2")) %>"/>
                    </td>
                </tr>
                <tr>
                    <td><br/><b>&nbsp;Change your username</b><br/>
                        &nbsp;<input class = "formInput" type="text" name="username" id="username" placeholder = "Username" pattern="(?=.*[A-Za-z]).{4,16}" maxlength="16" title="Must contain at least one letter, between 4-16 characters" value="<% Response.write(Request.QueryString("z3")) %>"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="updErrors" id="eror22"> *Username is used by someone else on the site   </div>
                    </td>
                </tr>
                <tr>
                    <td><br/><b>&nbsp;Change the password</b><br/>
                        &nbsp;<input class = "formInput" type="password" name="password" id="password" placeholder = "Password"  pattern="(?=.*\d)(?=.*[A-Za-z]).{6,16}" maxlength="16" title="Must contain at least one number and one letter, between 6-16 characters" value="<% Response.write(Request.QueryString("z4")) %>"  />
                    </td>
                </tr>
                
                <tr>
                    <td><br/><b>&nbsp;Change gender</b><br/>
                        &nbsp;<select class = "formInput" size="1" name="gender" id="gender" value="<% Response.write(Request.QueryString("z5")) %>" >
                            <option value="1">Female</option>
                            <option value="2">Male</option>
                            <option value="3">Other</option>
                            <option value="4">Rather not say</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><br/><b>&nbsp;Change e-mail adress</b><br/>
                        &nbsp;<input class = "formInput" type="email" name="gmail" id="gmail"  placeholder = "israel12@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Must contain an email address" value="<% Response.write(Request.QueryString("z6")) %>"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="updErrors" id="eror33"> *Email is used by someone else on the site  </div>
                    </td>
                </tr>
                <tr>
                    <td> 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="Reset" class="buttonLog"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="submit" value="Update" name="submit" id="submit" class="buttonLog" onclick="checkPassword()"/><br/><br/>   
                    </td>
                </tr>
            </table>
        </form>
               
     </div>
        <%
            If (request.QueryString("updateUser")= "nouserDB") Then
                response.write("<script>document.getElementById('eror11').style.display='block'</script>")
            End If
            If (request.QueryString("updateUser")= "userinDBUpd") Then
                response.write("<script>document.getElementById('eror22').style.display='block'</script>")
            End If
            If(request.QueryString("updateUser")= "emailinDBUpd") Then
                response.write("<script>document.getElementById('eror33').style.display='block'</script>")
            End If
        %>
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

    

        

