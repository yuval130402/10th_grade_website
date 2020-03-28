<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>NBA Basketball!!-Contact</title>
        <link rel="stylesheet" type="text/css" href="CSSproject.css"/>
        <script>
            function deleteMessage(a){
                var delMess=confirm("Are you sure you want to delete message number "+a+"?");
                if (delMess==true)
                    window.location.href ="deleteMsg.asp?MessageToDelete="+a;
            }
            function checkValid(){
                var str = document.getElementById("subject").innerHTML; 
                var res=str.replace(/'|"/g, "");
                document.getElementById("subject").innerHTML = res;
                
                var str2 = document.getElementById("msg").innerHTML; 
                var res2=str2.replace(/'|"/g, "");
                document.getElementById("msg").innerHTML = res2;
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
            <div class="begin"><span name="welCont" id="welCont"><b>Welcome to my site!</b></span> <br/>
                <b class="who">Who am I? </b><br/>
                I am Yuval Cohen and I am 16 years old. <br/>
                I love sports and especially basketball and I like playing the guitar. <br/>
                I am a scout guide, a 10th grade student and I'm studying Computer Science. <br/><br/>
                <b class="who">Details:</b> <br/>
                <b>my e-mail address:</b> yuval130402@gmail.com <br/>
                <b>my phone number:</b> 052-6202995 <br/><br/>
                For any problem or question you can contact me, I will be happy to help you. <br/>
                <b class="who">Send me a message: </b>
            </div>
            <div class="container">
                <form action="AspContact.asp" method="get">
                    <%
                        If Session("log")="" Then  
                            response.write("<label for='email'>Email Address</label><input class='cont' type='text' id='email2' name='email2' pattern='[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$' placeholder='Subject of the message..' maxlength='50' title='The subject of the massage, up to 50 characters' required>")
                        End If           
                    %>
                    
                    <label for="subject">Subject</label>
                    <input class="cont" type="text" id="subject" name="subject" placeholder="Subject of the message.." maxlength="50" title="The subject of the massage, up to 50 characters" required>
                
                    <label for="msg">Your message</label>
                    <textarea class="cont" type="text" id="msg" name="msg" placeholder="Write something you want to ask me.." style="height:200px" title="Your message" required></textarea>
                
                    <input type="submit" value="Submit" class="conSubmit" onclick="checkValid()"/>
                
                </form>
            </div> 
        </span>
        <span style="display:<%=adm2%>;">
            <table class="admcontable">
                    <tr><td class="rtitle2" colspan="100%" title="Manage contact messages">Contact Messages</td></tr> 
                    <%
                    Set Conn = Server.CreateObject("ADODB.Connection")
                    Conn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & Server.MapPath("rs.mdb")
                    
                
                    ' Get data from the database depending on the value of the id in the URL
                    strSQL = "SELECT * FROM Contact ORDER BY ID DESC"
                    Set rs = Conn.Execute(strSQL)
                                    
                    ' Write the data of the player
                    Response.Write "<tr " & "id='rosth'" & "><td " & "class='contadm'" & " " & "title='number message'" & ">Number</td><td " & "class='contadm'" & " " & "title='Email-address'" & ">Email</td><td " & "class='contadm'" & " " & "title='Date Message'" & ">Date</td><td " & "class='contadm'" & " " & "title='Subject'" & ">Subject</td><td " & "title='Message'" & ">Message</td></tr>"
        
                    Do  
                    Response.Write "<tr><td>" & rs("ID") & "</td><td>" & rs("email") & "</td><td>" & rs("dateMessage") & "</td><td>" & rs("subject") & "</td><td>" & rs("message") & "</td><td><img " & "src='images/trash2.png'" & " " & "onclick='deleteMessage(" & rs("ID") & ")'" & " " & "title='Delete message'" & " " & "align='center'" & " " & "class='imgCon'" & "/><br/></td></tr>" 
                    rs.MoveNext
                    Loop While Not rs.EOF   
                                
                    Conn.Execute(strSQL)
                    Conn.Close
                    Set Conn = Nothing
                    %>    
            </table>
        </span>
      </div>
      <script>
        
        // When the user scrolls the page, execute myFunction 
        window.onscroll = function() {myFunction()};
        
        function myFunction() {
            var winScroll = document.body.scrollTop || document.documentElement.scrollTop; 
            //The documentElement property returns the documentElement of the document, as an Element object.
            //The scrollTop property sets or returns the number of pixels an element's content is scrolled vertically.
            var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
            //The scrollHeight property returns the entire height of an element in pixels, including padding, but not the border, scrollbar or margin.
            //The clientHeight property returns the viewable height of an element in pixels, including padding, but not the border, scrollbar or margin.
            var scrolled = (winScroll / height) * 100;
            document.getElementById("myBar").style.width = scrolled + "%";
        }
      </script>
    </body>
</html>