<?php
        // Als je methoden uit de LoginClass wilt gebruiken
        //  dan moet je deze class eerst toevoegen met require_once
        require_once("class/LoginClass.php");
		require_once("class/SessionClass.php");
        
        //Check of beide velden zijn ingevoerd        
        if ( !empty($_POST['email']) && !empty($_POST['password']))
        {
                        
                if (LoginClass::check_if_email_password_exists($_POST['email'],
                                                               $_POST['password']))
                {
                	if (LoginClass::check_if_account_is_activated($_POST['email'],
                                                               $_POST['password']))
															   {}
                        //echo "De combinatie bestaat";exit();        
                        //Verwijs door naar de homepage van de geregistreerde gebruiker
                        //echo "Record bestaat in de database";
                        
                        $session->login(LoginClass::find_user_by_email_password($_POST['email'],$_POST['password']));
						
                        switch ($_SESSION['userrole'])
                        {
                                case 'root':
                                        header("location:index.php?content=root_homepage");
                                break;
                                case 'administrator':
                                        header("location:index.php?content=administrator_homepage");                        
                                break;
                                case 'customer':
                                        header("location:index.php?content=customer_homepage");
                                break; 
                                case 'photographer':
                                        header("location:index.php?content=photographer_homepage");
                                break; 
                                case 'developer':
                                        header("location:index.php?content=developer_homepage");
                                break;                        
                        }
                }
                else
                {
                        //Blijkbaar is het record niet gevonden in de database
                        echo "De ingevoerde combinatie van gebruikersnaam - wachtwoord is ons niet bekend. U wordt doorgestuurd naar de inlogpagina";
                        header("refresh:4; url=index.php?content=login_form");
                }                
        }
        else
        {
                echo 'U heeft beide of een van beide velden niet ingevuld. 
                          U wordt doorgestuurd naar de inlogpagina';
                header("refresh:4;url=index.php?content=login_form");
        }

?>