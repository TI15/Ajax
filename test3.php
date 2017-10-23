<?php
	if(isset($_POST['fname']) && isset($_POST['lname'])) {
		echo  "Hej " . $_POST['fname'] .  " ". $_POST['lname'];
	}
	else {
		echo "apa";
	}

?>