<?php 
        $userrole = array('developer', 'root', 'admin');
        include("security.php"); 
?>
<h3>Developer homepage</h3>
Uw id is: <?php echo $_SESSION['id']; ?><br>
Uw gebruikersrol is: <?php echo $_SESSION['userrole']; ?>