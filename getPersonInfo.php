<?php
	if(isset($_GET['q'])) {
		include "config.php";
		$q = $_GET['q'];
		$sql = "select PersonId, Fnamn, Enamn, Gatuadress, Postnr, Postadress, Telefon, Epost from person where PersonId = ?";
		if($my = connect_db()) {
			if($stm = $my->prepare($sql)) {
				$stm->bind_param("i",$q);
				$stm->execute();
				$stm->bind_result($id,$f,$e,$g,$p,$po,$t,$ep);
				while($stm->fetch()) {
					echo "<p>ID: " . $id . "</p>";
					echo "<p>Förnamn: " . $f . "</p>";
					echo "<p>Efternamn: " . $e . "</p>";
					echo "<p>Gatuadress: " . $g . "</p>";
					echo "<p>Postnr: " . $p . "</p>";
					echo "<p>Postadress: " . $po . "</p>";
					echo "<p>Telefon: " . $t . "</p>";
					echo "<p>Epost: " . $ep . "</p>";
				}
				$stm->close();
			}
			$my->close();
		}
	}
?>