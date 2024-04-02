<?php
session_start() ;
?>

<form action="login.php" method = "POST">
  <button type = "submit" name = "login">Login</button>
</form>


<?php
include('connection.php');

if(isset($_POST['login'])){

     // getting data from form
    // $username = $_POST['username'];
    // $password = $_POST['password'];

        // sample data
        $username = 'gomeeis';
        $password = 'jamdgtfhgfdh';

    // echo $username ;


    $query = "SELECT * FROM employee_table WHERE username = '$username' ";
      $result = mysqli_query($con, $query);
      $row = mysqli_fetch_assoc($result);

      if(password_verify($password, $row['password']) ){
        // if the password is the same with te one on the database

        $db_name = $row['name'];
        $db_username = $row['username'];
        
        echo $db_name ;
        echo $db_username ;

        // set session
        $_SESSION["username"] = $db_username ;
        $_SESSION["name"] = $db_name ;
        $_SESSION["login"] = TRUE ;
       

        if( $row = mysqli_num_rows($result)> 0){
          // redirect
          header('location:index.php');

      }
      

      }

      

}
?>