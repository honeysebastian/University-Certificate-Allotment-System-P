<html>
    <head>
        <title>User-homepage</title>
        <link rel="stylesheet"  href="../css/homepage.css">
    </head>
<body>

  <div class="top">
   <H1 size="48">UNIVERSITY CERTIFICATE ALLOTMENT SYSTEM</H1>
    <div class="sub menu" style="letter-spacing:3px;">
        <p align="right">
        <a href="./userhome.php" >Home</a>&emsp;
        <a href="./application.php" >Application</a>&emsp;
        <a href="./delete_application.php" >Delete Application</a>&emsp;
        <a href="./application_view.php">View Application</a>
        <a href="./logout.php" >Logout</a></p>
    </div>
  </div>  
  <?php session_start(); $id=$_SESSION['id']; ?>
<input type="hidden" name="users_id" readonly value=<?php echo $id; ?> >     
</body>
</html>
