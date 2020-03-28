<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NBA Basketball!!-Video and Highlights</title>
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
        <a class="dropbtn">Teams</a>
        <div class="dropdown-content">
            <a href="east.asp">EAST</a>
            <a href="west.asp">WEST</a>
        </div>
      </li>
      <li><a href="Standing.asp" >Standings</a></li>
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
    <h1><b>NBA Videos and Highlights</b></h1>
    <div class="backIframe"><br/>
      <iframe style="vertical-align:middle;" width="100%" height="630" src="https://www.youtube.com/embed/QGuYep0cSAY?rel=0&modestbranding=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen name="videoIframe"></iframe>
    </div><br/>
    <table border class="videotable">
      <tr><td colspan=100%><h2 class="videoTitle"><b title="Click on each video you want to watch">Link Videos</b></h2></td></tr> 
      <tr>
        <td class="video2Title"><b title="Highlights best NBA all-time">All-Time Links</b></td>
        <td class="video2Title"><b title="Highlights best NBA players">Players Links</b></td>
        <td class="video2Title"><b title="Highlights best from 2017-2018 season">17-18 Season Links </b></td>
      </tr> 
      <tr>  
        <td>
          <ol class="videoList">
            <li><a target="videoIframe" class="vidLink"  href="https://www.youtube.com/embed/QGuYep0cSAY?rel=0&modestbranding=1">ALL 50-Point Dunks In NBA Slam Dunk Contest History</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/7Trc0cNlXX4?rel=0&modestbranding=1">NBA Best Crossovers and Ankle Breakers Of All Time</a></li>
            <li><a target="videoIframe" class="vidLink"  href="https://www.youtube.com/embed/uxF7DLpVwkQ?rel=0&modestbranding=1">Best Buzzer Beaters Ever</a></li>
            <li><a target="videoIframe" class="vidLink"  href="https://www.youtube.com/embed/0qxTCBTXKNA?rel=0&modestbranding=1">Longest shots in NBA History</a></li>
            <li><a target="videoIframe" class="vidLink"  href="https://www.youtube.com/embed/Z7qAzUb0VLc?rel=0&modestbranding=1">NBA "How Did You Do That" Moments</a></li>
            <li><a target="videoIframe" class="vidLink"  href="https://www.youtube.com/embed/UDR97w0ZEr0?rel=0&modestbranding=1">NBA FInals - Clutchest Plays of All Time</a></li>
            <li><a target="videoIframe" class="vidLink"  href="https://www.youtube.com/embed/gaDp4QmlRT8?rel=0&modestbranding=1">The Top 10 NBA Crossovers Of All Time</a></li>
            <li><a target="videoIframe" class="vidLink"  href="https://www.youtube.com/embed/7xtB9hcl1R4?rel=0&modestbranding=1">The Top 10 NBA Dunks Of All Time</a></li>
            <li><a target="videoIframe" class="vidLink"  href="https://www.youtube.com/embed/kuK3-mGmtXY?rel=0&modestbranding=1">Top 10 NBA Shooters of All Time</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/aEAvN5rBc6g?rel=0&modestbranding=1">Top 10 NBA Dunkers of All Time</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/Beq-zz959Vk?rel=0&modestbranding=1">Top 10 NBA Passers of All Time</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/Iyu909SyWsY?rel=0&modestbranding=1">Top 10 NBA Ball Handlers of All Time</a></li>
          </ol>
        </td>
        <td>
          <ol class="videoList">
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/nLuh8u6xJjY?rel=0&modestbranding=1">Kobe Bryant Top 10 Plays of Career</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/aFL3_WkOa9M?rel=0&modestbranding=1">LeBron James Top 10 Plays of Career</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/rL--gQ2AvJY?rel=0&modestbranding=1">Michael Jordan Top 10 Plays of Career</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/FZ2hcYlRupM?rel=0&modestbranding=1">Stephen Curry Top 10 Plays of Career</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/nbLfmqnDDT4?rel=0&modestbranding=1">Russell Westbrook Top 10 Plays of Career</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/KuW-QG2vRtY?rel=0&modestbranding=1">Allen Iverson Top 10 Plays of Career</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/MDSFPvmA75o?rel=0&modestbranding=1">Shaquille O'neal Top 10 Plays of Career</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/Au7a_vQRk1A?rel=0&modestbranding=1">Kyrie Irving Top 10 Plays of Career</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/vJX5Cuk5BaE?rel=0&modestbranding=1">James Harden Top 10 Plays of Career</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/GIFiWKFSsh0?rel=0&modestbranding=1">Kevin Durant Top 10 Plays of His Career</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/yrC5x3UEx5s?rel=0&modestbranding=1">Magic Johnson Top 10 Plays of Career</a></li>
          </ol>
        </td>
        <td>
          <ol class="videoList">
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/jupuyWI6Y4k?rel=0&modestbranding=1">Best Plays From The 2017-2018 NBA Season</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/uiwpL6f4Q3w?rel=0&modestbranding=1">Best Play From Every Team: 2017-2018 Season</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/fnVx4ZpJLhs?rel=0&modestbranding=1">Best Crossovers From The 2017-2018 NBA Season</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/1FbjeL74yWU?rel=0&modestbranding=1">Best Dunks From The 2017-2018 NBA Season</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/M_K4IU7t5ok?rel=0&modestbranding=1">Top 50 Impossible Shots of the 2017 NBA Season</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/exjMt3v81tA?rel=0&modestbranding=1">Best 50 Plays of the 2018 NBA Regular Season</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/4NWrc7taavg?rel=0&modestbranding=1">Best DUNKS of the 2018 NBA Playoffs!</a></li>
            <li><a target="videoIframe" class="vidLink" href="https://www.youtube.com/embed/hWnH4EkyeWQ?rel=0&modestbranding=1">Warriors vs Cavs - Highlights | Game 4 | NBA Finals</a></li>
          </ol>
        </td>
      </tr>
    </table><br/>
    
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
    </div>
  </body>
</html>