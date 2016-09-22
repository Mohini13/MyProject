<%-- 
    Document   : Things
    Created on : Mar 18, 2016, 4:00:14 PM
    Author     : kamalpreet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/full-slider.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        
        
        <style type="text/css">
     
            #body {
                    padding: 15px 0 350px 0;
                    background: url(Photos/HomePage/Street.jpg)no-repeat center center fixed;
                    -webkit-background-size: cover;
                    -moz-background-size: cover;
                    -o-background-size: cover;
                    background-size: cover;
            }
            #head
            {
                margin-top: 50px;
                font-family: 'Open Sans', sans-serif;
                font-size: 2.5em;
                border: 1px solid #555;
                background-color: rgba(0,0,0,0.6);
                padding-top: 20px;
                height: 75px;
                color: #fff;
                font-weight: 500;
                line-height: 40px;
                padding-left: 50px;
                text-align: center;
            }
            #header
            {               
                font-family: Arial;
                font-size: 20px;
                color: blue;               
            }
            #Details
            {       
                   margin-top: 200px;
                   width: 700px;
		   background-color: whitesmoke;
		   margin: 20px;
		   margin-right: 300px;
                   margin-left: 300px;
		   padding: 6px 14px;
		   float: center;
		   font-size: 12pt;
		   line-height: 150%;                
            }
            #pic
            { 
		padding: 10px;
		margin: 10px;
		float: right;
            }
           
            #home
            {
                color: white;
            }
           #foot 
           {
                font-family: 'Open Sans', sans-serif;
                font-size: 1.5em;
                border: 1px solid #555;
                background-color: rgba(0,0,0,0.6);
                height: 45px;
                color: #fff;
                padding-top: 10px;
                font-weight: 500;
                line-height: 20px;
                padding-left: 25px;
                text-align: center;                           
           }
        </style>
        
    </head>
    <body id="body" bgcolor="#F2E0F7">
        
                
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="HotelHome.jsp"><b>Taj Hotels</b></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                
        <ul class="nav navbar-nav navbar-right">
            <li class="navHover"><a href="Login.jsp">Login</a></li>
            <li class="navHover"><a href="Contact.jsp">Contact us</a></li>
            <li class="navHover"><a href="Availability.jsp">Check Availability</a></li>
            <li class="navHover"><a href="PhotoGallary.jsp">Photo Gallery</a></li> 
        </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
        
        <div id="WalkOut">
            <div id="hed">
            <header id="head">Things to Do in Chandigarh</header>
            </div>
            <div id="Details">
                <ul>
                    <div>
                        <p><img id="pic" src="Photos/ThingsToDo/RockGarden.jpg"/><h id="header"><u>Rock Garden of Chandigarh</u></h><br/>Best place to go with family. It has numerous sculptures made by using a variety of different discarded waste materials like frames, forks, handle bars, metal wires, broken bangles etc.</p><br/>  
                    </div>
                    <div>
                        <p><img id="pic" src="Photos/ThingsToDo/ButterflyPark.jpg"/><h id="header"><u>ButterFly Park</u></h><br/>This park has 35 species of butterflies in the park like Common Grass Yellow, Apefly, Blue Mormon, Chocolate pansy and Commander, Common Blue Bottle and Angled Castor etc.</p><br/> 
                    </div>
                    <div>
                        <p><img id="pic" src="Photos/ThingsToDo/DoolsMeuseum.jpg"/><h id="header"><u>Dolls Museum</u></h><br/>In International Dolls Museum, you can find about 250 different kinds of dolls collected from countries like Denmark, Germany, Netherlands, Spain, Russia and Korea etc.</p><br/> 
                    </div>
                    <div>
                        <p><img id="pic" src="Photos/ThingsToDo/ElanteMall.jpg"/><h id="header"><u>Elante Mall</u></h><br/>Elante Mall hosts various Indian and international brands like Big Bazaar, Westside, Pantaloons, Lifestyle, Shoppers Stop, Hackett London among others.</p><br/> 
                    </div>
                    <div>
                        <p><img id="pic" src="Photos/ThingsToDo/FunCity.jpg"/><h id="header"><u>Fun City</u></h><br/>It includes an amusement park, water park and resort within its bounds and is spread over 43 acres of scenic land. Funcity claims the distinction of being the biggest amusement and water park in the entire northern part of India.</p><br/> 
                    </div>
                    <div>
                        <p><img id="pic" src="Photos/ThingsToDo/MusicalFountain.jpg"/><h id="header"><u>Musical Fountain</u></h><br/>The show puts on display an enthralling combination of music, colours and Laser lights. You get a true feel of Chandigarh when you watch the fountains dance on foot tapping Punjabi Music.</p><br/> 
                    </div>
                    <div>
                        <p><img id="pic" src="Photos/ThingsToDo/PunjabUniversity.jpg"/><h id="header"><u>Punjabi University</u></h><br/>It is one of the oldest universities in India. Punjab University is ranked among the top institutions of higher education in India and in Asia.</p><br/> 
                    </div>
                    <div>
                        <p><img id="pic" src="Photos/ThingsToDo/RoseGarden.jpg"/><h id="header"><u>Rose Garden</u></h><br/>The garden is said to be spread about thirty to forty acres containing nearly 825 varieties of roses in it and more than 32,500 varieties of other medicinal plants and trees.</p><br/> 
                    </div>
                    <div>
                        <p><img id="pic" src="Photos/ThingsToDo/ShantiKunj.jpg"/><h id="header"><u>Shanti Kunj</u></h><br/>The name means “Abode of Peace” trees, pools and streams crossed by curved bridges and a large number of meditation nooks define this garden.There is also an open air stage.</p><br/> 
                    </div>
                    <div>
                        <p><img id="pic" src="Photos/ThingsToDo/SukhnaLake.jpg"/><h id="header"><u>Sukhna Lake</u></h><br/>The atmosphere here is serene. Sukhna Lake is the venue for many festive celebrations. The most popular is the Mango Festival held during the monsoons</p><br/> 
                    </div>
                    <div>
                        <p><img id="pic" src="Photos/ThingsToDo/ThunderZone.jpg"/><h id="header"><u>ThunderZone</u></h><br/> It is having numerous thrilling amusement and water waves and slides accompanied with lush green lawns. Water Park has 4 pools in which always lies the never-ending fun & masti.  </p><br/> 
                    </div>
                    <div>
                        <p><img id="pic" src="Photos/ThingsToDo/TimberTrial.jpg"/><h id="header"><u>Timber Trial</u></h><br/>You would find scenic beauty here. It's basically a Hotel/Restaurant with inside/outside/terrace sitting available with good Bar & Food Services.</p><br/>
                    </div>
                </ul>  
            </div>
                <footer id="foot"><a id="home" href="HotelHome.jsp"/>Taj Hotels</footer>
            </div>       
    </body>
</html>
