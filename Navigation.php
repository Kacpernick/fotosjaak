<?php 
	if (isset($_GET["Content"]))
	{
			include($_GET['Content'].".php");
	}
	else
	{
		include ("Home.php");
	}
?>