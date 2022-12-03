<?php
$servername="localhost";
$username="root";
$password="";
$database_name="ucas";

$con = mysqli_connect($servername,$username,$password,$database_name);
// Check connection
$id=$_GET['id'];
if (mysqli_connect_errno())
 {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
  }
  
  $sql = "UPDATE `application` SET `action` = 'rejected' where id=$id";

      if (mysqli_query($con, $sql))
      {
        echo '<script>alert("Application is Rejected")</script>';
      }
      else
      {
          echo "Error: " . $sql."<br>" . mysqli_error($con);
         
      }
      mysqli_close($con);
  ?>
