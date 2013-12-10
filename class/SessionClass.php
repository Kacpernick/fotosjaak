<?php
	class SessionClass
	{
		//fields
		private $id;
		private $email;
		private $userrole;
		private $loggen_in;
		
		//Constructor
		public function __construct()
		{
			
		}
		public function login($loginClassObject)
		{
			$this->id = $_SESSION['id'] = $loginClassObject->get_id();
			$this->email = $_SESSION['email'] = $loginClassObject->get_email();
			$this->userrole = $_SESSION['userrole'] = $loginClassObject->get_userrole();
			$loggen_in = true;
		}
		public function logout()
		{
			session_destroy();
			unset($this->id);
			unset($this->email);
			unset($this->userrole);
			
			$this->logged_in = false;
		}
	}
	$session = new SessionClass();
?>