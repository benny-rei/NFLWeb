<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Bootstrap  -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<!-- eigenes Bootstrap-CSS -->
<style type="text/css">
    <%@include file="Bootstrap/css/bootstrap.css" %>
</style>

<!-- eigenes Bootstrap-JS -->
<script src="Bootsprap/js/bootstrap.min.js"></script>
<!--/ Bootstrap  -->


<title>NFL</title>
</head>
<body>

	<h1>NFL spieler</h1>

	<button id="anzeigeButton" onclick="loadDoc()">Anzeigen</button>

	<div id="spieler">Zuig1</div>


	<script>
		
		function loadDoc() {
			var xhttp = new window.XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if (xhttp.readyState == 4 && xhttp.status == 200) {
					
					var obj = JSON.parse(this.responseText);
					
					document.getElementById("spieler").innerHTML = obj;
					//document.getElementById("spieler").innerHTML = "Test";
				}
			};
			xhttp.open("GET", "NFLServlet", true);
			xhttp.send();
		}
		
	</script>

</body>
</html>