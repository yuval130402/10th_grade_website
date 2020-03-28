<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>NBA Basketball!!-About NBA</title>
        <link rel="stylesheet" type="text/css" href="CSSproject.css"/>
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
      <h1 class="abn"><b>ABOUT NBA</b></h1>
      <div class="firstAbout"> <br/>
        <b class="quest">What is the NBA? </b><br/>
        The National Basketball Association, or NBA, is a professional basketball league comprised of 30 teams across North America featuring the best basketball players in the world. <br/><br/>
        <b class="quest">How many teams are there in the NBA? </b><br/>
        The NBA is a collection of 30 teams, broken down by two conferences with three divisions apiece. <br/> 
        The Western Conference plays host to the Northwest, Pacific and Southwest Divisions, featuring the following 15 teams: 
        <ol class="tmtwe">
            <li><span class="titletm"><b> Northwest: </b></span>Denver Nuggets, Minnesota Timberwolves, Oklahoma City Thunder, Portland Trail Blazers, Utah Jazz. </li>
            <li><span class="titletm"><b> Pacific: </b></span> Golden State Warriors, Los Angeles Clippers, Los Angeles Lakers,Phoenix Suns, Sacramento Kings.</li>
            <li><span class="titletm"><b> Southwest: </b></span> Dallas Mavericks, Houston Rockets, Memphis Grizzlies, New Orleans Pelicans, San Antonio Spurs.</li>
        </ol>
        The Eastern Conference's 15 squads also break up across three divisions: the Atlantic, Southeast and Central. 
        <ol class="tmtwe">
            <li><span class="titletm"><b> Atlantic: </b></span> Boston Celtics, Brooklyn Nets, New York Knicks, Philadelphia 76ers, Toronto Raptors.</li>
            <li><span class="titletm"><b> Central: </b></span> Chicago Bulls, Cleveland Cavaliers, Detroit Pistons, Indiana Pacers, Milwaukee Bucks.</li>
            <li><span class="titletm"><b> Southeast: </b></span> Atlanta Hawks, Charlotte Hornets, Miami Heat, Orlando Magic, Washington Wizards.</li>
        </ol><br/>
        <b class="quest">When was the NBA established? </b><br/>
        The National Basketball Association was founded on June 6, 1946 at the Commodore Hotel in New York City. <br/>
        Maurice Podoloff was the league's first president, a title later changed to commissioner. <br/> 
        Eleven teams were part of that league, originally called the Basketball Association of America. <br/>
        Podoloff's name is now emblazoned on the NBA MVP trophy. <br/><br/>
        <b class="quest">How many games are there in an NBA season? </b><br/>
        There are 82 games in the NBA's regular season. <br/><br/>
        <b class="quest">Who are some of the best players in NBA history? </b><br/>
        The NBA's list of all-time Legends continues to grow with each new generation, boasting names like Michael Jordan, <br/>
        Bill Russell, Kareem Abdul-Jabbar, Wilt Chamberlain, Magic Johnson, Larry Bird, Oscar Robertson, John Havlicek, Rick Barry, John Stockton, Karl Malone, Elgin Baylor, David Robinson, Julius Erving, Charles Barkley and many more. <br/>
        In 1996, the league announced its 50 Greatest Players list. <br/>
        Since then, players like Tim Duncan, Kobe Bryant, Kevin Garnett, Shaquille O'Neal, Steve Nash, Dirk Nowitzki, Allen Iverson, among others, have added their names to the list of greats. <br/><br/>
        <b class="quest">How many teams make the playoffs? </b><br/>
        The top eight teams in each Conference reach the postseason, with the No. 1 seed facing No. 8 in the first round, No. 2 vs. No. 7 and so on. 
        Each round features a best-of-seven series with a 2-2-1-1-1 format (two games at the top seed's home court, two games at the lower seed's home, then back and forth one game at a time). <br/>
        The winners of each Conference meet in the best-of-seven NBA Finals. <br/><br/>
        <b class="quest">What is the NBA Replay Center? </b><br/>
        Beginning with the 2014-15 NBA regular season, the NBA launched its new state-of-the-art NBA Replay Center, based in Secaucus, N.J. 
        The NBA Replay Center is fueled by a groundbreaking high-speed arena network to enhance the performance of NBA referees and to accelerate the replay review process. <br/><br/>
         <b class="quest">How can I watch NBA games? </b><br/>
         NBA games are available on television in more than 200 countries around the world, including hundreds of national broadcasts in the USA every year on ABC, ESPN, TNT and NBA TV. <br/>
         Fans can also watch games live and on-demand on NBA LEAGUE PASS around the world. <br/><br/>
        <b class="quest">How are All-Stars selected? </b><br/>
        The starting lineups are selected each year by fans around the world, who can vote online at nba.com, the NBA app and on social media. 
        The reserves are selected by NBA head coaches. If a player is unable to play due to injury, his replacement is selected by NBA Commissioner Adam Silver. <br/>
        If a team has a starter who's unable to play, the head coach of that All-Star team will select his replacement from his bench (including any Commissioner-appointed players). <br/><br/>
        <b class="quest">Who coaches the All-Star teams? </b><br/>
        The two spots go to the head coaches of the teams with the best record in each Conference at the time of All-Star weekend.<br/><br/>
        <b class="quest">When is the NBA Draft? </b><br/>
        The NBA Draft is held each year near the end of June, after NBA Finals. In 2017 the Draft was on June 22, 2017. <br/><br/>
        <b class="quest">Who's eligible to be Drafted? </b><br/>
        The pool of players includes all players over the age of 19 who are more than a year removed from high school, and who have also officially declared for the NBA Draft; 
        all international players over the age of 22; all players over 19 who've signed a contract to play with an international professional team; and all US-born players who've played their four years of college eligibility. <br/><br/>
        <b class="quest">How does the Draft order and Draft Lottery work? </b><br/>
        Each spring, a lottery -- comprised of ping-pong balls drawn randomly in an audited event -- decides the fate of the 14 teams who did not qualify for the Playoffs. 
        The teams with the fewest wins have the greatest chance at winning the Lottery. Three Lotto balls are drawn, deciding the first, second and third picks. 
        After that point, the remaining picks go sequentially, in order of lowest finish to highest finish in the standings. <br/>
        After pick No. 14, the teams choose in reverse order of regular season finish (the team with the best record goes last).<br/>
        Teams may move up and down in the order with trades.<br/><br/>
        <b class="quest">How many players are on a NBA roster? </b><br/>
        Each NBA team can have a maximum of 15 players, 13 of which can be active each game.<br/><br/>
        <b class="quest"> How long are the quarters? </b><br/>
        Each quarter lasts 12 minutes. Each overtime lasts 5.<br/><br/>
        <b class="quest">How long is the shot clock? </b><br/>
        The shot clock is 24 seconds.<br/><br/>
        <b class="quest">What are the other measurements? </b><br/>
        The rims hang 10 feet from the floor, sitting on opposite ends of a court that's 50 feet wide and 94 feet long. <br/>
        Both ends of the floor feature a free throw line, 15 feet from the rim, and a 3-point arc that runs from 23 feet, 
        9 inches from the basket at the top of the perimeter to 22 feet at the baselines. The corner 3-pointer has become one of the league's most popular shots because of the difference.<br/>
        The basketball itself measures 9 inches in diameter, and must be inflated to between 8.5 and 9.5 pounds per square inch. <br/><br/>
        <b class="quest">What are the official rules of the NBA? </b><br/>
        Read the official rules <a class="rules" href="http://www.nba.com/news/officiating/" target="_blank">here</a>.<br/><br/>
        <b class="quest">Where can I buy tickets to NBA games? </b><br/>
        Tickets for every team are available on each team website or by <a class="rules" href="https://nbatickets.nba.com/" target="_blank">clicking here. </a><br/><br/>
        <b class="quest">Which teams have the most NBA titles? </b><br/>
        The Boston Celtics have the most of any team, with 17. <br/>
        The Los Angeles Lakers are close behind with 16, including titles won when the team was in Minneapolis. <br/>
        The Chicago Bulls have 6 and San Antonio Spurs have 5, with all of the Spurs' titles coming since Tim Duncan joined the team. <br/><br/>
        <b class="quest">Which players have the most NBA titles? </b><br/>
        The Celtics dynasty of the late 1950's through 60's dominates the list, with Bill Russell (11) leading the way. 
        He's followed by Sam Jones (10); Tom Heinsohn, K.C. Jones, Tom 'Satch' Sanders, John Havlicek (8); Jim Loscutoff and Frank Ramsey (7). Bob Cousy has 6. <br/>
        Of the non-Celtics, Robert Horry leads the way with 7, followed by Kareem Abdul-Jabbar, Michael Jordan and Scottie Pippen (6).<br/><br/>
        <b class="quest">Which players have the most MVP's?</b><br/>
        Kareem Abdul-Jabbar has 6, followed by Michael Jordan and Bill Russell with 5 and Wilt Chamberlain and LeBron James, with 4.<br/><br/>
        <b class="quest">Who's the all-time scoring leader? </b><br/>
        Kareem Abdul-Jabbar leads the all-time list, with 38,387 points. Karl Malone has second-most, at 36,928. Kobe Bryant has 32,482, to rank third. <br/>
        However, Michael Jordan leads the all-time list with 30.12 points per game.<br/><br/>
        <span class="moreInf"><a class="moreInfLink" href="https://en.wikipedia.org/wiki/National_Basketball_Association" target="_blank">For more information about NBA click here</a></span>
       </div>
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