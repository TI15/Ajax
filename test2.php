<?php
	if(isset($_GET['fname']) && isset($_GET['lname'])) {
		echo  "Hej " . $_GET['fname'] .  " ". $_GET['lname'];
	}
	else {
		echo "apa";
	}

?>