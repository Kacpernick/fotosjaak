<?php //Dat is de home page van de admin
	$userrole = array('root', 'administrator');
	include("security.php"); 
?>
<h3>Administrator homepage</h3>
Uw id is: <?php echo $_SESSION['id']; ?><br>
Uw gebruikersrol is: <?php echo $_SESSION['userrole']; ?>