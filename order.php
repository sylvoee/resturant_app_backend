<?php 
session_start();

include('connection.php');

?>


<!-- Thi s must be taken off in production -->
<form action="" method = "POST">
<button type = "submit" name = "btn-make-order">make order</button>
</form>

<!-- Thi s must be taken off in production -->
<form action="" method = "POST">
<button type = "submit" name = "btn-delete">Delete A Record</button>
</form>

<!-- Thi s must be taken off in production -->
<form action="" method = "POST">
<button type = "submit" name = "btn-edit">Update A Record</button>
</form>


<?php

echo $_SESSION['name'];


if(isset($_POST['btn-make-order'])){

//     // Getting data from form
// uncomment this during production

//   $customer_name = $_POST['customer_name'];
//   $description = $_POST['description'];
//   $total_cost = $_POST['total_cost'];
//   $address = $_POST['address'];
//   $employee = $_POST['employee'];
 

// sample item, uncomment in production
$customer_name = "Bricky Hail";
$description = "Some Roasted beef pie";
$total_cost = 13.6;
$address = "12 James Park Avenue" ;
$employee = $_SESSION['name'];





  // inserting data into database
  $sql = "INSERT INTO order_table(customer_name,  description, total_cost, address ,time, employee)
   VALUES('$customer_name', '$description', '$total_cost', '$address' , NOW(), '$employee')";
if(mysqli_query($con, $sql)){
    echo "order was made successfully.";
} else{
    // echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
    echo "invalid data input, post failed.";
}

  }



  // displaying all stock
  $query = "SELECT * FROM order_table";
  $result = mysqli_query($con, $query);
  $row = mysqli_fetch_assoc($result);

  while( $row = mysqli_fetch_assoc($result)){

        echo ($row['customer_name']). '<br>' ;
        echo "ID :" . ($row['id']). '<br>' ;
        echo ($row['description']). '<br>' ;
        echo ($row['total_cost']). '<br>' ;
        echo ($row['time']). '<br>' ;
        echo ($row['address']). '<br>' ;
        echo ($row['employee']). '<br>' ;
        echo '............................'. '<br>' ;


  }

    if(isset($_POST['btn-delete']) ){
    
      // Getting id from stock in production
    // $id = $_POST['id'] ;
    
 // sample, pls take this off later
  $id = 1 ;
    
  // // Delete from stock
  $delete_query  = "DELETE FROM order_table WHERE id = $id" ;
  $delete_result = mysqli_query($con, $delete_query);
  if($delete_result){
   echo "Record deleted Successfully" ;
   // redirect
   header('location:order.php');
  }else{
   echo "Error in deleting" ;
  }
 
  

    }






 // To update the record
 
 if(isset($_POST['btn-edit']) ){
    
  // Getting id from stock in production
// $id = $_POST['id'] ;

// sample, pls take this off later
$id = 4 ;

// uncomment this during production

//   $customer_name = $_POST['customer_name'];
//   $description = $_POST['description'];
//   $total_cost = $_POST['total_cost'];
//   $address = $_POST['address'];
//   $employee = $_POST['employee'];
 

// sample item, uncomment in production
$customer_name = "Benson Rose";
$description = "Some rice.....";
$address = "plot 23 Beford Road" ;




// // Delete from stock
$edit_query  = "UPDATE order_table  SET customer_name = '$customer_name', description = '$description', address ='$address' WHERE id = $id  " ;
$edit_result = mysqli_query($con, $edit_query);
if($edit_result){
echo "Record updated Successfully" ;
// redirect
header('location:order.php');
}else{
echo "Error in updating" ;
}



}
 


?>