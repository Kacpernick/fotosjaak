<?php 
if (!isset($_SESSION['id']))
{
	echo "Ubent niet ingelogd";
	header ("refresh:4;url=index.php?content=Home");
	exit();
}
else if (!in_array($_SESSION['userrole'],$userrole))
{
	echo "U bent niet bevoegd.";
	header ("refresh:5; url=index.php?content=".$_SESSION['userrole']."_home");
	exit();
}


?>