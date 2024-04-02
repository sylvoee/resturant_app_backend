<?php
session_start() ;
?>

<h3>
    Home Page
</h3>


<?php

if(isset($_SESSION["name"])){
    echo $_SESSION["name"] ; ?>

    <form action="" method="POST"> 
    <button name="logout" class="btn text-light">Logout</button>
    </form> 


<?php }else{ ?>
<a href="login.php">Login</a>
<?php } 

?>


<?php 
// Process the logout

if(isset($_POST['logout'])){
    session_destroy();
    session_unset();

    header('location:login.php');
   
   }

?>







        

  
          
        


      

