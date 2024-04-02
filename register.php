<form action="register.php" method = "POST">
  <button type = "submit" name = "btn-register">Register</button>
</form>


<?php
if(isset($_POST['btn-register'])){


// include database connection
include('connection.php');

 // getting 
// $name = $_POST['name'];
// $username = $_POST['username'];
// $password = $_POST['password'];

// sample data
$name = 'Wanke Fills';
$username = 'gomeeis';
$password = 'jamdgtfhgfdh';

// validation
$error = array();

if(strlen(trim($password)) < 8){
  array_push($error, "Character less than 8")  ;

}

if(strlen(trim($username)) < 3){
  array_push($error, "username should not be less than 3 characters")  ;

}

$query = "SELECT * FROM employee_table WHERE username = '$username' ";
      $result = mysqli_query($con, $query);
      $row = mysqli_fetch_assoc($result);


      if(gettype($row) == "NULL"){
        echo "" ;
       
      }else{
        array_push($error ,"username already exist");
       
      }


// looping through the errors
foreach ($error as $err) {
  echo $err ;
}


// if there is no error pls insert into database
if(sizeof($error) == 0){
  // hash the password
$password = password_hash($password, PASSWORD_DEFAULT);


$sql = "INSERT INTO employee_table(username, name, password, time)
  VALUES('$username','$name', '$password', NOW())";
  if(mysqli_query($con, $sql)){
    echo "Registration  successfully.";
  } else{
  
    echo "invalid data input, post failed.";
  }

}





}
?>