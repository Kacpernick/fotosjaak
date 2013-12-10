<?php
	require_once("class/SessionClass.php");
	
	$session->logout;
	session_destroy();
	header("location:index.php?content=Home");
?>