<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>NBA Basketball!!-Manage users</title>
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

      <% 
            Set Conn = Server.CreateObject("ADODB.Connection")
            Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("rs.mdb")
            dim users
            users = 1
            dim strSQL
            dim str
            dim admuser
            admuser = Session("username")
            str="<table class='admcontable'>"
            strSQL="SELECT * FROM users WHERE Users <> '" &admuser& "' ORDER BY Users ASC"
            set rs=Conn.Execute(strSQL)
            str=str& "<tr><td class='rtitle2' colspan='100%' title='Manage the users in your site'>Manage users</td></tr>"
            str=str& "<tr " & "id='rosth'" & "><td " & "class='contadm'" & " " & "title='First name'" & ">Firstname</td><td " & "class='contadm'" & " " & "title='Last name'" & ">Lastname</td><td " & "class='contadm'" & " " & "title='Username'" & ">Username</td><td " & "class='contadm'" & " " & "title='Password'" & ">Password</td><td " & "class='contadm'" & " " & "title='Gender'" & ">Gender</td><td " & "title='Email-address'" & ">Email</td><td " & "title='Administrator'" & ">Admin</td></tr>"
            Do While Not rs.EOF   
                str=str& "<tr><td>"&rs("FirstName")&"</td>"
                str=str& " <td>" & rs("LastName") & "</td>"
                str=str& " <td>" & rs("Users") & "</td>"
                str=str& " <td>" & rs("Password") & "</td>"
                str=str& " <td>" & rs("Gender") & "</td>"
                str=str& " <td>" & rs("Email") & "</td>"
                str=str& " <td>" & rs("admin") & "</td>"
                str=str& " <td><img src='images/trash2.png' onclick=deleteUser('"& rs("Users") &"') align='center' class='imgCon' title='Delete user'/>&nbsp;&nbsp;&nbsp;" 
                str=str& "<img src='images/admin.png' onclick=creatAdmin('"& rs("Users") &"') align='center' class='imgCon' title='Add Administrator'/></td></tr>"
                users=users+1
                rs.MoveNext
            Loop
            str=str&"</table>"
            application("numberUsers")= users
            Conn.Close
            Set Conn = Nothing
        %>
        <h2 class="headcolor" style="text-align:center;" title="Including administrators"> The number of users in the site:
        <%
            Response.Write(Application("numberUsers")) 
        %>
        </h2>
      
        <% response.write("<p>" & str & "</p>") %>

        
        
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

    