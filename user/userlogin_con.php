<?php
session_start();
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "ucas";

    //Create connection
    $con = mysqli_connect($servername, $username, $password, $dbname);

    // Check connection
    if (!$con) {
      die("Connection failed: " . mysqli_connect_error());
    }

    $email= $_POST['email'];
    $password= $_POST['password'];

    $sql = mysqli_query($con, "SELECT * FROM register WHERE email = '$email' and `password` = '$password'") or die(mysqli_error());
		$fetch=mysqli_fetch_array($sql);
		$count=mysqli_num_rows($sql);

		if($count > 0){
      $_SESSION['id']=$fetch['id'];
      header('Location:userhome.php');
    }
    else {
      $_SESSION['tmp']="Invalid username or password!";
      header('Location:userlogin.php');
      //echo '<script>alert("ivalid username or password")</script>';
    }

    $con->close();
    ?>