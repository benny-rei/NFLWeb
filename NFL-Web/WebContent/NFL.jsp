<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Bootstrap  -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- eigenes Bootstrap-CSS -->
<link rel="stylesheet"
	href="/home/bennny/git/NFLWeb/NFL-Web/WebContent/Bootsprap/css/bootstrap.css">


<!-- eigenes Bootstrap-JS -->
<script
	src="/home/bennny/git/NFLWeb/NFL-Web/WebContent/Bootsprap/js/bootstrap.min.js"></script>
<!--/ Bootstrap  -->

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<title>NFL</title>
</head>
<body>

	<h1>NFL spieler</h1>

	<button id="anzeigeButton" onclick="loadDoc()">Anzeigen</button>

	<div id="spieler">Zuig</div>


	<script>
		
		function loadDoc() {
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					
					//document.getElementById("spieler").innerHTML = this.responseText;
					document.getElementById("spieler").innerHTML = "Test";
				}
			};
			xhttp.open('GET', 'NFLServlet', true);
			xhttp.send();
		}

		/*$(document).on("click", "#anzeigeButton", function() { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
			$.get("NFLServlet", function(responseJson) { // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
				var $ul = $("<ul>").appendTo($("#spieler")); // Create HTML <ul> element and append it to HTML DOM element with ID "somediv".
				$.each(responseJson, function(index, item) { // Iterate over the JSON array.
					$("<li>").text(item).appendTo($ul); // Create HTML <li> element, set its text content with currently iterated item and append it to the <ul>.
				});
			});
		});*/
	</script>

</body>
</html>