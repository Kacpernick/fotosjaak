<?php
require_once ("MySqlDatabaseClass.php");
//classedefinitie
class LoginClass
{
	//Fields
	private $id;
	private $email;
	private $password;
	private $userrole;
	private $activated;
	private $activationdate;
	//Properties
	public function get_id(){return $this->id;}
	public function get_email(){return $this->email;}
	public function get_password(){return $this->password;}
	public function get_userrole(){return $this->userrole;}
	public function get_activated(){return $this->activated;}
	public function get_activationdate(){return $this->activationdate;}
	//Constructor
	public function __construct()
	{
		
	}
	public static function find_by_sql($query)
	{
		//
		global $database;
		$result = $database->fire_query($query);
		$object_array = array();
		while ($row = mysql_fetch_array($result))
		{
			$object = new LoginClass();
			
			$object->id 			= $row['id'];
			$object->email 			= $row['email'];
			$object->password 		= $row['password'];
			$object->userrole 		= $row['userrole'];
			$object->activated 		= $row['activated'];
			$object->activationdate = $row['activationdate'];
			$object_array[] = $object;
		}
		return $object_array;
	}
	public static function select_all_from_login()
	{
		$query = "SELECT * FROM `login`";
		$result = self::find_by_sql($query);
		return $result;
	}	
	public static function email_exists($emailaddress)
	{
		global $database;
		$query = "SELECT * FROM `login` WHERE `email`= '".$emailaddress."'";
		$result = $database->fire_query($query);
		if (mysql_num_rows($result)>0)
		{
			return "Het e-mailadres bestaat al";
		}
		else 
		{
			return "Het e-mailadres bestaat niet";
		}
	}
}
?>

<?php echo LoginClass::email_exists("root@gmail.com");?>
