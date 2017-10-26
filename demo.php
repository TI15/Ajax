<!DOCTYPE html>
<html>
<head>
	<title>Demo</title>
	<script>
		function showCustomer(str) {
	  		var xhttp;    
	  		if (str == "") {
	    		document.getElementById("txtHint").innerHTML = "";
	    		return;
	  		}
	  		xhttp = new XMLHttpRequest();
	  		xhttp.onreadystatechange = function() {
	    		if (this.readyState == 4 && this.status == 200) {
	      			document.getElementById("txtHint").innerHTML = this.responseText;
	    		}
	  		};
	  		console.log("str = " + str);
	  		xhttp.open("GET", "getPersonInfo.php?q="+str, true);
	  		xhttp.send();
		}
</script>

</head>
<body>
<header>Välj kund i nedanstående lista och få fram mer info om denna</header>
<section>
<form action=""> 
<select name="person" onchange="showCustomer(this.value)">
<option value="">Välj en person:</option>
<?php
	include "config.php";
	if($my = connect_db()) {
		$sql = "select PersonId, Fnamn, Enamn from person";
		if($stm = $my->prepare($sql)) {
			$stm->execute();
			$stm->bind_result($id,$f,$e);
			while($stm->fetch()) {
				echo "<option value=$id>$f $e</option>";
			}
		}
	}
?>

</select>
</form>

<section id="txtHint"></section>