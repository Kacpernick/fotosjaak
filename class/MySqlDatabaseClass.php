<?php
	
	include_once ('config/config.php');
	
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
												USERNAME,
												PASSWORD);
			
			//Er word hier een database geselecteerd								
			mysql_select_db(DATABASE,$this->db_connection) or die ('Hij doet het niet');
		}
		// Deze functie krijgt als argument een query mee.
		public function fire_query($query)
		{
			$result = mysql_query($query) or die('MySqlDatabase: ' .mysql_error());
			return $result;
		}
	}
//MAAK nu een instantie
$database = new MySqlDatabaseClass();
