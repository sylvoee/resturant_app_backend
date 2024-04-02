<?php 
session_start();

include('connection.php');

?>


<!-- Thi s must be taken off in production -->
<form action="" method = "POST">
<button type = "submit" name = "btn-stock">Register Stock</button>
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

// if the person is not login pls go to login page
if(!isset($_SESSION['login'])){
 header('location:login.php');
}



if(isset($_POST['btn-stock'])){

//     // Getting data from form
// uncomment this during production

//   $item_name = $_POST['item_name'];
//   $price = $_POST['price'];
//   $description = $_POST['description'];
//   $category = $_POST['category'];
//   $employee = $_POST['employee'];
 

// sample item, uncomment in production
 $item_name = 'rice';
 $price = 2.30;
 $description = "Made from fish";
 $category = "snacks";
 $employee ;
 
 if(isset($_SESSION['name'])){
  $employee = $_SESSION['name'];

 }


// validation
$error = array();

if(strlen(trim($item_name)) < 1){
  array_push($error, "Item name  less than 1 character")  ;

}

$query = "SELECT * FROM stock_table WHERE item_name = '$item_name' ";
      $result = mysqli_query($con, $query);
      $row = mysqli_fetch_assoc($result);


      if(gettype($row) == "NULL"){
        echo "" ;
       
      }else{
        array_push($error ,"item_name already exist, but you can edit it");
       
      }

// var_dump($error) ;
// looping through the errors
foreach ($error as $err) {
  echo $err ;
}


// insert if no error
if(sizeof($error) < 1){

  // inserting data into database
  $sql = "INSERT INTO stock_table(item_name, price, description,employee, category, time)
   VALUES('$item_name','$price', '$description', '$employee', '$category', NOW())";
if(mysqli_query($con, $sql)){
    echo "Stock was registered successfully.";
} else{
    // echo "ERROR: Could not able to execute $sql. " . mysqli_error($con);
    echo "invalid data input, post failed.";
}

  }


}


  // displaying all stock
  $query = "SELECT * FROM stock_table";
  $result = mysqli_query($con, $query);
  $row = mysqli_fetch_assoc($result);

  while( $row = mysqli_fetch_assoc($result)){

        echo ($row['employee']). '<br>' ;
        echo "ID :" . ($row['id']). '<br>' ;
        echo ($row['item_name']). '<br>' ;
        echo ($row['description']). '<br>' ;
        echo ($row['price']). '<br>' ;
        echo ($row['time']). '<br>' ;
        echo '............................'. '<br>' ;


  }





    if(isset($_POST['btn-delete']) ){
    
      // Getting id from stock in production
    // $id = $_POST['id'] ;
    
 // sample, pls take this off later
  $id = 13 ;
    
  // // Delete from stock
  $delete_query  = "DELETE FROM stock_table WHERE id = $id" ;
  $delete_result = mysqli_query($con, $delete_query);
  if($delete_result){
   echo "Record deleted Successfully" ;
   // redirect
   header('location:stock.php');
  }else{
   echo "Error in deleting" ;
  }
 

    }


 // To update the record
 
 if(isset($_POST['btn-edit']) ){
    
  // Getting id from stock in production
// $id = $_POST['id'] ;

// sample, pls take this off later
$id = 8 ;

// records from the user , uncomment in production
// $item_name = $_POST['item_item'];
// $description = $_POST['description'];
// $category = $_POST['category'] ;
// $price = $_POST['price'];

// Sample, delete in production
$item_name = 'juice';
$description = 'Made with bread flour ....';
$price = 3.20 ;
$category = "drinks" ;




// validation
$error = array();

if(strlen(trim($item_name)) < 1){
  array_push($error, "Item name  less than 1 character")  ;

}

$query = "SELECT * FROM stock_table WHERE item_name = '$item_name' ";
      $result = mysqli_query($con, $query);
      $row = mysqli_fetch_assoc($result);


      if(gettype($row) == "NULL"){
        echo "" ;
       
      }else{
        array_push($error ,"item_name already exist, but you can edit it");
       
      }

// var_dump($error) ;
// looping through the errors
foreach ($error as $err) {
  echo $err ;
}

// // Delete from stock
if(sizeof($error) < 1){

  $edit_query  = "UPDATE stock_table  SET item_name = '$item_name', description = '$description', price ='$price', category = '$category' WHERE id = $id  " ;
  $edit_result = mysqli_query($con, $edit_query);
  if($edit_result){
  echo "Record updated Successfully" ;
  // redirect
  header('location:stock.php');
  }else{
  echo "Error in updating" ;
  }

}


}
 


?>