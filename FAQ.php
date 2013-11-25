<?php 
if (!isset($_GET['language']))
{
	$_GET['language'] = 'dutch';
}
$userroot = array ('customer');
include ("security.php");
include ("connect_db.php");
$query = "SELECT * FROM `faq`";
$result = mysql_connect ($query, $db);
$record = mysql_fetch_array($result);
?>
FAQ

<table class='simple'>
	<caption>
		FAQ pagina
		<a href='index.php?content=FAQ&language=english'>
			<img src='./images/' alt=''/>
		</a>
		
		<a href='index.php?content=FAQ&language=english'>
			<img src='./images/' alt=''/>
		</a>
	</caption>
	<tr>
		<th>
			id
		</th>
		<th>
			vraag
		</th>
		<th>
			antwoord
		</th>
	</tr>
</table>

<?php
while ($record = mysql_fetch_array($result))
{
	echo "<tr>
			<td>
				".$record['id']."
			</td>
			<td>
				";
				if($_GET['language'] == 'english')
				{
					echo $record['question_english'];
				}
				else
				{
					echo $record['question_dutch'];
				}
				echo "
				
				
			</td>
			<td>
				";
				if($_GET['language'] == 'english')
				{
					echo $record['answer_english'];
				}
				else
				if($_GET['language'] == 'dutch')
				{
					echo $record['answer_dutch'];
				}
				echo "
				
			</td>
		  </tr>";
}
?>
