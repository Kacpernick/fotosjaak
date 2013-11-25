
<form action = "index.php?Content=Register" method = "post">
<Table border = "0">
<tr>
<td>
Voornaam
</td>
</tr>
<tr>
<td>
<input type = "text" name = "firstname">
</td>
</tr>

<tr>
<td>
Tussenvoegsel
</td>
</tr>
<tr>
<td>
<input type = "text" name = "infix">
</td>
</tr>

<tr>
<td>
Achternaam
</td>
</tr>
<tr>
<td>
<input type = "text" name = "surname">
</td>
</tr>

<tr>
<td>
Straat + Huisnummer
</td>
</tr>
<tr>
<td>
<input type = "text" name = "street">
<input type = "number" name = "house_number" min = "0" max = "18923">
</td>
</tr>

<tr>
<td>
Woonplats
</td>
</tr>
<tr>
<td>
<input type = "text" name = "city">
</td>
</tr>

<tr>
<td>
Postcode
</td>
</tr>
<tr>
<td>
<input type = "text" name = "zip_code">
</td>
</tr>

<tr>
<td>
Gebortedatum
</td>
</tr>
<tr>
<td>
<input type = "date" name = "birthday" min = "1887-01-01" max = "<?php echo Date('y-m-d') ?>" required/>
</td>
</tr>

<tr>
<td>
Geslacht
</td>
</tr>
<tr>
<td>
<input type = "radio" name = "sex" value = "male">Man
<input type = "radio" name = "sex"  value = "female">Vrouw
</td>
</tr>

<tr>
<td>
Burgelijke stat
</td>
</tr>
<tr>
<td>
<input type = "radio" name = "marital_status" value = "married" required>Getrouwd
<input type = "radio" name = "marital_status" value = "single" required>Niet getrouwd
</td>
</tr>

<tr>
<td>
Favoriete gamesoort
</td>
</tr>
<tr>
<td>

	<select name = "favo_genre">	
		<option value = "not_selected">-----</option>
		<option value = "Action">Action</option>
		<option value = "Race">Race</option>
		<option value = "RPG">RPG</option>
		<option value = "Strategy">Strategie</option>
	</select>

</td>
</tr>

<tr>
<td>
Favorite spel
</td>
</tr>
<tr>
<td>
<input type = "text" name = "favo_game">
</td>
</tr>

<tr>
<td>
E-mail
</td>
</tr>
<tr>
<td>
<input type = "email" name = "email">
</td>
</tr>

<tr>
<td>
Wactwoord
</td>
</tr>
<tr>
<td>
<input type = "password" name = "password">
</td>
</tr>

<tr>
<td>
<input type = "submit" name = "submit" value = "Verstuur">
</td>
</tr>
</Table>