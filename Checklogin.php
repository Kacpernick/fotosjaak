<?php
	if (!empty($_POST['email']) && !empty($_POST['password']))
	{
		include('./connect_db.php');
		$query = "SELECT *
				  FROM `users`
				  WHERE `email` = '".$_POST['email']."'
				  AND `password` = '".$_POST['password']."'";
		//echo $query;
		$result = mysql_query($query, $db);
		if (mysql_num_rows($result) > 0)
		{
			//echo "Record bestaat";
			header("location:index.php?Content=Download");
			$record = mysql_fetch_array ($result);
			$_SESSION['id'] = $record['id'];
			$_SESSION['userrole'] = $record['userrole'];
			$_SESSION['firstname'] = $record['firstname'];
			
			switch ($record['userrole'])
			{
				case'root':
						header("location:index.php?content=root_home");
						break;
				case'admin':
						header("location:index.php?content=admin_home");
						break;
				case'customer':
						header("location:index.php?content=customer_home");
						break;
			}
			
			
		}
		else
		{
			echo 'E-mail adres is niet bekend';
			header("refresh:4;url=index.php?Content=login_form");
		}
	}
	else
	{
		echo 'Een van de velden is niet ingevuld';
		header("refresh:4;url=index.php?Content=login_form");
	}
?>