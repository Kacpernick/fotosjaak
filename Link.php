<ul>
	<li>
	<a href = "index.php?Content=Home">Home</a>
	</li>
	<?php if (isset($_SESSION['userrole']))
		{
			echo "<li>
				<a href = 'index.php?Content=logout'>Uitlogen</a>
				</li>";
				switch ($_SESSION['userrole'])
				{
					case 'customer':
					echo "<li>
						<a href = 'index.php?Content=Download'>Download</a>
						</li>";
					echo "<li>
						<a href = 'index.php?Content=faqpage'>FAQ</a>
						</li>";
					echo "<li>
						<a href = 'index.php?Content=customer_home'>User</a>
						</li>";
					echo "<li>
						<a href = 'index.php?Content=wijzigingen'>Wijzigingen</a>
						</li>";
					break;
					
					case 'administrator':
					echo "<li>
						<a href = 'index.php?Content=control'>Control</a>
						</li>";
						echo "<li>
						<a href = 'index.php?Content=administrator_homepage'>User</a>
						</li>";
					break;
					
					case 'root':
						echo "<li>
						<a href = 'index.php?Content=root_homepage'>User</a>
						</li>";
					break;
			
						case 'developer':
						echo "<li>
						<a href = 'index.php?Content=developer_homepage'>User</a>
						</li>";
					break;
						
						case 'photographer':
						echo "<li>
						<a href = 'index.php?Content=photographer_homepage'>User</a>
						</li>";
					break;
				}
		}
		else
		{
			echo "<li>
				<a href = 'index.php?Content=login_form'>Log in</a>
				</li>
			
				<li>
				<a href = 'index.php?Content=Register_form'>Registratie</a>
				</li>";
		}
		?>
		<li>
	<a href = "index.php?Content=class/MySqlDatabaseClass">db-test</a>
	</li>
	<li>
	<a href = "index.php?Content=logintest">Login-test</a>
	</li>
</ul>