<?php // de coworker Homepage met de rechten voor 'coworker', 'root', 'admin'
	$userrole = array('coworker', 'root', 'admin');
	include("security.php"); 
?>
<h3>Coworker homepage</h3>
Uw id is: <?php echo $_SESSION['id']; ?><br>
Uw gebruikersrol is: <?php echo $_SESSION['userrole']; 
?>
