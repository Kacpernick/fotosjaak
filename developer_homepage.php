<?php //Dat is de home page van de developer met de rechten van 'root', 'developer'
	$userrole = array('root', 'developer');
	include("security.php"); 
?>
<h3>Developer homepage</h3>
Uw id is: <?php echo $_SESSION['id']; ?><br>
Uw gebruikersrol is: <?php echo $_SESSION['userrole']; ?>