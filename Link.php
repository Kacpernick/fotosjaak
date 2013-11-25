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
					case 'admin':
					echo "<li>
						<a href = 'index.php?Content=control'>Control</a>
						</li>";
					break;
					case 'root':
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
	<a href = "index.php?Content=Idereen">Idereen</a>
	</li>
</ul>