<%-- 
    Document   : Contact
    Created on : Mar 18, 2016, 3:59:27 PM
    Author     : kamalpreet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="source/Styles/ContactCss.css" type="text/css"> 

        <!-- Custom CSS -->
        <link href="css/full-slider.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        
                <style type="text/css">
     
            #body 
            {
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
            #log
            {
                margin-left: 30px;
                margin-right: 700px;
                margin-top: 50px;
            }
            #Details
            {
                margin-top: 150px;
                margin-left: 500px;
                margin-right: 500px;
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
            #submit
            {
                width: 100%;
                height: 50px;
                border-radius: 0;
                border: 1px solid #333;
                background: rgba(0,0,0,0.8);
                color: #fff;
                margin-top: 30px;
            }
            #submit:hover
            {
                background: rgba(9,8,77,0.7);
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
                margin-left: 5px;
                margin-right: 5px;
           }
        </style>
        
        
    </head>
    
<body id="body" bgcolor="#F2E0F7">
    
    <!-- Navigation -->
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
            <li class="navHover"><a href="Availability.jsp">Check Availability</a></li>
            <li class="navHover"><a href="Things.jsp">Things to do</a></li> 
            <li class="navHover"><a href="PhotoGallary.jsp">Photo Gallery</a></li> 
                </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
        
            <div class="info">
            <div id="hed">
                <header id="head">Contact Us</header>
            </div>
            </div>
    
<div id="map-canvas">
  
    <p id="para">If you have any questions or concerns and/or need immediate attention. Please feel
            to contact us at any of the phone numbers listed here. Otherwise, please complete the form below and one of 
            staff member respond within the 24-48 hours.
    </p>
    
    <!--<p id="para">A paragraph (from the Ancient Greek παράγραφος paragraphos, "to write beside" or "written beside") is a self-contained unit of a discourse in writing dealing with a particular point or idea. A paragraph consists of one or more sentences.</p>-->
    <script
        src="http://maps.googleapis.com/maps/api/js">
    </script>

<script>
        var map;
        var chandigarh = new google.maps.LatLng(30.7333148,76.7794179);

        // Add a Home control that returns the user to London
        function HomeControl(controlDiv, map) {
          controlDiv.style.padding = '5px';
          var controlUI = document.createElement('div');
          controlUI.style.backgroundColor = 'yellow';
          controlUI.style.border='1px solid';
          controlUI.style.cursor = 'pointer';
          controlUI.style.textAlign = 'center';
          controlUI.title = 'Set map to Chandigarh';
          controlDiv.appendChild(controlUI);
          var controlText = document.createElement('div');
          controlText.style.fontFamily='Arial,sans-serif';
          controlText.style.fontSize='12px';
          controlText.style.paddingLeft = '4px';
          controlText.style.paddingRight = '4px';
          controlText.innerHTML = '<b>Home<b>'
          controlUI.appendChild(controlText);

          // Setup click-event listener: simply set the map to London
          google.maps.event.addDomListener(controlUI, 'click', function() {
            map.setCenter(chandigarh)
          });
        }

        function initialize() {
          var mapDiv = document.getElementById('googleMap');
          var myOptions = {
            zoom: 12,
            center: chandigarh,
            mapTypeId: google.maps.MapTypeId.ROADMAP
          }
          map = new google.maps.Map(mapDiv, myOptions); 
          // Create a DIV to hold the control and call HomeControl()
          var homeControlDiv = document.createElement('div');
          var homeControl = new HomeControl(homeControlDiv, map);
        //  homeControlDiv.index = 1;
          map.controls[google.maps.ControlPosition.TOP_RIGHT].push(homeControlDiv);
        }

        google.maps.event.addDomListener(window, 'load', initialize);
        </script>
        <div id="googleMap" style="width:500px;height:380px;"/>
    </div>
    <p id="address">Block No. 9, Sector-17 A,<br/>  Chandigarh,  Chandigarh - 160017<br/>  India  <br/>
         taj.chandigarh@tajhotels.com <br/>
         +91 172 6613000  <br/>
         91 172 6613000
    </p>
</div>
            <div class="Details">
                <form action="ContactInfo.jsp" method="get" id="log">
                        <fieldset>
                            <input name="name" class="form-control" type="text" id="name" size="30" placeholder="Name">
                            <br>
                            <input name="email" class="form-control" type="text" id="email" size="30" placeholder="Email">
                            <br>
                            <input name="phone" class="form-control"type="text" id="phone" size="30" placeholder="Phone">
                            <br>
                            <input name="human" class="form-control"type="text" id="human" size="30" placeholder="Prove your not a robot... What is 2+2?">
                            <br>
                        </fieldset>
                        <fieldset>
                            <textarea name="comments" cols="40" class="form-control" rows="20" id="comments" placeholder="Message"></textarea>
                        </fieldset>
                        <fieldset>
                            <button type="submit" name="submit" id="submit" value="Submit">Send Message</button>
                        </fieldset>
                </form>
            </div>
        </div>
           
            </div>
                <footer id="foot"><a id="home" href="HotelHome.jsp"/>Taj Hotels</footer>
            </div>  
    </body>
</html>
