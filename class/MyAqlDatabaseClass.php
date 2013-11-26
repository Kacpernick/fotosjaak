<?php
	
	require_once ('config/config.php');
	
	class MySqlDatabaseClass
	{
		//Fields
		private $db_connection;
		//Dit is de constructor van de MySqlDatabaseClass
		//Een constructor herken je in PHP aan de naam.
		public function __construct()
		{
			//Velden roep je aan met $this->
			$this->db_connection = mysql_connect(SERVERNAME,
												USERNAE,
												PASSWORD);
			
			//Er word hier een database geselecteerd								
			mysql_select_db($DATABASE,$this->db_connection) or die ('Hij doet het niet');
		}
		
		
	}

?>