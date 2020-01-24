<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <meta charset="utf-8">
      <title>FACELOG login</title>
      <link rel="stylesheet" type="text/css" href="WebStyle.css">
  </head>
  <body>
  <div style="background-color: #3B64B1;
          color:white;
          padding-top: 20px;
          padding-right: 30px;
          padding-bottom: 10px;
          padding-left: 20px;">
      <img class = "left" src="FACELOG2.png" alt="FACELOG" width="270" height="81">
  </div> 
   
   <!--<div class = "image-region">
     <img class = "left" src="JFC icon.jpg" alt="Trulli" width="150" height="109">
     <img class = "left" src="LOR icon.png" alt="Trulli" width="250" height="109">
   </div>-->
   
   <ul>
    <li><a style="font-family:verdana;" href="index.php">Home</a></li>
    <li><a style="font-family:verdana;"  href="visitor-log.html">Visitor Log In</a></li>
    <li><a style="font-family:verdana;" class = "active" href="loginpage.php">Visitors Details</a></li>
    <li><a style="font-family:verdana;" href="loginpageemail.php">Contact Email</a></li>
    <!--ri><a style="font-family:verdana;" href = "index.php">Log Out</a></ri-->
   </ul>
   
  
  <div align="center" =>

    <h2 margin-top=500px style="font-family:verdana;" align = center>Welcome to Visitor Details</h2>
  <div style="margin-top=500px" class="form-wrapper">
  
  <form action="#" method="post">
	
    <!--div class="form-item">
		<input type="text" name="user" required="required" placeholder="Username" autofocus required></input>
    </div-->
    
    <input margin-top = 100px type="password" name="pass" required="required" placeholder="Enter Password" required><br><br>
    <div margin-top = 100px align="center" class="button-panel">
		<input margin-top = 100px align="center" type="submit" class="newvisitorbtn" title="Log In" name="login" value="Login">
    </div>
  </form>

<?php
  	$val = $_POST['pass'];
  	if($val == "123")
  	{
  		//header("Location:fantastic4.dx.am/main.html");
  		//exit();
  		//exit(header("Location:www.fantastic4.dx.am/main.html"));
                ?><script> location.replace("visitor-sheet.html"); </script><?php
  	} elseif ($val != "123") {
                 //echo "Retry, password is not correct.";
        }
        
?>
  
</div>

</body>
</html>