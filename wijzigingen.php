<?php 
        $userrole = array('customer', 'root', 'admin');
        include("security.php"); 
?>		
		Uw id is: <?php echo $_SESSION['firstname'];?>
<table>
Tussenvoegsel
<tr>
<td>
<input type = "text" name = "firstname">
</td>
</tr>
<td>
<input type = "submit" name = "submit" value = "Verstuur">
</td>
</tr>
</table>

<?php 
			$_SESSION['firstname'] = $record['firstname'];
?>