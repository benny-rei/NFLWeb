<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>



<html lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>NFL Infopage</title>

    <!-- Bootstrap Core CSS -->
    <link href="Bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="Bootstrap/css/freelancer.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="Bootstrap/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="Bootstrap/https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="Bootstrap/https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>


<script type="text/javascript">
	function loadTeams() {
		var xhttp = new window.XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				
				var phrase = document.getElementById("teamInput").innerHTML;
				
				var obj = JSON.parse(this.responseText);
				
		        // CREATE DYNAMIC TABLE.
		        var table = document.createElement("table");

		        // CREATE HTML TABLE HEADER ROW USING THE EXTRACTED HEADERS ABOVE.
				var col = [];
		        var tr = table.insertRow(-1);                   // TABLE ROW.

		        team.setTeamname(rs.getString("teamname"));
				team.setOrt(rs.getString("ort"));
				team.setStadionname(rs.getString("stadionname"));
				team.setConference(rs.getString("conference"));
				team.setDivision(rs.getString("division"));
				team.setSuperbowlTitel(rs.getInt("superbowltitel"));
				team.setChampionshipTitel(rs.getInt("championshipTitel"));
				team.setGruendungsjahr(rs.getInt("gruendungsjahr"));
				
		        
		        var th = document.createElement("th");      // TABLE HEADER.
	            
		        th.innerHTML = "teamname";
	            tr.appendChild(th);
	            
	            th.innerHTML = "ort";
	            tr.appendChild(th);
	            
	            th.innerHTML = "stadionname";
	            tr.appendChild(th);
	            
	            th.innerHTML = "conference";
	            tr.appendChild(th);
	            
	            th.innerHTML = "division";
	            tr.appendChild(th);
	            
	            th.innerHTML = "superbowlTitel";
	            tr.appendChild(th);
	            
		        th.innerHTML = "championshipTitel";
	            tr.appendChild(th);
	            
	            th.innerHTML = "gruendungsjahr";
	            tr.appendChild(th);
	            

		        for (var i = 0; i < obj.length; i++) {

		            tr = table.insertRow(-1);

		            for (var j = 0; j < col.length; j++) {
		                var tabCell = tr.insertCell(-1);
		                tabCell.innerHTML = obj[i][col[j]];
		            }
		        }

		        var divContainer = document.getElementById("teamDiv");
		        divContainer.innerHTML = "";
		        divContainer.appendChild(table);
		    
				
			}
		};
		var sendString = phrase+" team"
		xhttp.open("GET", "NFLServlet", true);
		xhttp.send(sendString);
	}
	
	function loadSpieler() {
		var xhttp = new window.XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				
				var phrase = document.getElementById("spielerInput").innerHTML;
				
				var obj = JSON.parse(this.responseText);
				
		        // CREATE DYNAMIC TABLE.
		        var table = document.createElement("table");

		        // CREATE HTML TABLE HEADER ROW USING THE EXTRACTED HEADERS ABOVE.
				var col = [];
		        var tr = table.insertRow(-1);                   // TABLE ROW.
		        

		        var th = document.createElement("th");      // TABLE HEADER.
		        th.innerHTML = "spielerID";
	            tr.appendChild(th);
	            
	            th.innerHTML = "vorname";
	            tr.appendChild(th);
		        
	            th.innerHTML = "nachname";
	            tr.appendChild(th);
		        
	            th.innerHTML = "geburtsdatum";
	            tr.appendChild(th);
	            
	            th.innerHTML = "superbowlErfolge";
	            tr.appendChild(th);
	             
	            th.innerHTML = "championshipTitel";
	            tr.appendChild(th);
	            
	            th.innerHTML = "prowbowlWahlen";
	            tr.appendChild(th);
	            
	            th.innerHTML = "seasonMVP";
	            tr.appendChild(th);
	            
	            th.innerHTML = "superbowlMVP";
	            tr.appendChild(th);
	            

		        for (var i = 0; i < obj.length; i++) {

		            tr = table.insertRow(-1);

		            for (var j = 0; j < col.length; j++) {
		                var tabCell = tr.insertCell(-1);
		                tabCell.innerHTML = obj[i][col[j]];
		            }
		        }

		        var divContainer = document.getElementById("spielerDiv");
		        divContainer.innerHTML = "";
		        divContainer.appendChild(table);
		    
				
			}
		};
		var sendString = phrase+" spieler"
		xhttp.open("GET", "NFLServlet", true);
		xhttp.send(sendString);
	}
</script>

<body id="page-top" class="index">
<div id="skipnav"><a href="#maincontent">Skip to main content</a></div>

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">National Football League</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#portfolio">Portfolio</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">About</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container" id="maincontent" tabindex="-1">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="Bootstrap/img/nflLogo.png" alt="">
                    <div class="intro-text">
                        <h1 class="name">NFL</h1>
                        <hr class="star-light">
                        <span class="skills">National Football League</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Superbowl 51</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="Bootstrap/img/superbowl/superbowl-1.jpeg" class="img-responsive" alt="Cabin">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="Bootstrap/img/superbowl/superbowl-2.jpeg" class="img-responsive" alt="Slice of cake">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="Bootstrap/img/superbowl/superbowl-3.png" class="img-responsive" alt="Circus tent">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="Bootstrap/img/superbowl/superbowl-4.jpeg" class="img-responsive" alt="Game controller">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="Bootstrap/img/superbowl/superbowl-5.jpeg" class="img-responsive" alt="Safe">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="Bootstrap/img/superbowl/superbowl-6.jpeg" class="img-responsive" alt="Submarine">
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>About</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-2">
                    <p>Die National Football League (NFL) ist eine US-amerikanische Profiliga im American Football. Sie besteht aus 32 Teams, die als Franchises in der National Football Conference (NFC) und der American Football Conference (AFC) organisiert sind. 
                    Beide Conferences, die im Wesentlichen aus den 1970 vereinigten Konkurrenzligen NFL und AFL bestehen, sind wiederum in je vier Divisionen unterteilt.
                    Die Saison beginnt nach einer mehrwöchigen Preseason, in der nur Testspiele bestritten werden. </p>
                </div>
                <div class="col-lg-4">
                    <p>Während der siebzehnwöchigen Regular Season bestreitet jedes Team 16 Spiele, daran anschließend spielen die besten Teams in den Play-offs um den Meistertitel. 
                    An diesen nehmen jeweils die vier Divisionssieger und die zwei weiteren besten Teams (die sogenannten Wildcard-Teams) einer Conference teil. Die daraus ermittelten Meister von AFC und NFC treffen im Super Bowl aufeinander, der seit einigen Jahren immer am ersten Sonntag im Februar stattfindet.
					Amtierender Meister sind die New England Patriots, die sich im Super Bowl LI gegen die Atlanta Falcons durchsetzten.</p>
                </div>
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <a href="http://www.nfl.com" class="btn btn-lg btn-outline">
                       <i class="glyphicon glyphicon-globe"></i> NFL Homepage
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- Search Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Search</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label for="Team">Teams</label>
                                <input type="text" class="form-control" placeholder="Teams" id="teamInput" onclick="loadTeams()">
                                <p class="help-block text-danger"></p> <button type="submit" class="btn btn-success btn-lg">search for teams</button>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label for="Spieler">Teams</label>
                                <input type="text" class="form-control" placeholder="Spieler" id="spielerInout" onclick="loadSpieler()">
                                <p class="help-block text-danger"></p> <button type="submit" class="btn btn-success btn-lg">search for players</button>
                            </div>
                        </div>
 
                       
                        <br>
                        <!-- Footer 
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button type="submit" class="btn btn-success btn-lg">Send</button>
                            </div>
                        </div>
                        -->
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-6">
                        <h3>Gefundene Spieler</h3>
                        <div id="spieler	Div"></div>
                    </div>
                   
                    <div class="footer-col col-md-6">
                        <h3>Gefundene Teams</h3>
                        <div id="teamDiv"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; Benjamin Reichhold 2017
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- Portfolio Modals -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <img src="Bootstrap/img/portfolio/cabin.png" class="img-responsive img-centered" alt="">
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <img src="Bootstrap/img/portfolio/cake.png" class="img-responsive img-centered" alt="">
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <img src="Bootstrap/img/portfolio/circus.png" class="img-responsive img-centered" alt="">
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <img src="Bootstrap/img/portfolio/game.png" class="img-responsive img-centered" alt="">
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <img src="Bootstrap/img/portfolio/safe.png" class="img-responsive img-centered" alt="">
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Project Title</h2>
                            <hr class="star-primary">
                            <img src="Bootstrap/img/portfolio/submarine.png" class="img-responsive img-centered" alt="">
                            <p>Use this area of the page to describe your project. The icon above is part of a free icon set by <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their website, you can download their free set with 16 icons, or you can purchase the entire set with 146 icons for only $12!</p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button id="btnSubmit" type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="Bootstrap/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="Bootstrap/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="Bootstrap/js/jqBootstrapValidation.js"></script>
    <script src="Bootstrap/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="Bootstrap/js/freelancer.min.js"></script>

</body>

</html>
