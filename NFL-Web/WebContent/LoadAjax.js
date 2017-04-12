/**
 * 
 */

function loadInfo() {
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
