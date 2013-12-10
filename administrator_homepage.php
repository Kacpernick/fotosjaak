<?php 
$userroot = array ('root','administrator');
include ("security.php");?>
<h3>Admin page</h3>
uw id is: <?php echo $_SESSION['id'];?><br>
uw gebruikers naam is : <?php echo $_SESSION['userrole'];?>
