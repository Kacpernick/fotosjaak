<h3>Login Test<h3>
<?php
	//include de LoginClass 
	require_once ('class/LoginClass.php');
	$query = "SELECT * FROM `login`";
	$result_array = LoginClass::find_by_sql($query);
	
	echo "<table>
			<tr>
			<th>id</th>
			<th>email</th>
			<th>password</th>
			<th>userrole</th>
			<th>activated</th>
			<th>activationdate</th>
			<tr>";
	foreach ($result_array as $value)
	{echo"<tr>
		<td>".$value->get_id()."</td>
		<td>".$value->get_email()."</td>
		<td>".$value->get_password()."</td>
		<td>".$value->get_userrole()."</td>
		<td>".$value->get_activated()."</td>
		<td>".$value->get_activationdate()."</td>
		</tr>";
	}
	echo "</table>"
?>