<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <meta charset="utf-8">
      <title>FACELOG contact email</title>
      <link rel="stylesheet" type="text/css" href="WebStyle.css">
  </head>
  <body>
   
  <div class= "toptitle">
      <img class = "left" src="FACELOG2.png" alt="FACELOG" width="270" height="81">
  </div> 
  <ul>
    <li><a style="font-family:verdana;" href="index.php">Home</a></li>
    <li><a style="font-family:verdana;" href="visitor-log.html">Visitor Log In</a></li>
    <li><a style="font-family:verdana;" href="loginpage.php">Visitors Details</a></li>
    <li><a style="font-family:verdana;" class = "active" href="contactemailpage.php">Contact Email</a></li>
    <ri><a style="font-family:verdana;" href = "loginpageemail.php">Log Out</a></ri>

    </ul>
    <!--form action="/visitor-log.html">
       <button type="submit" onclick="document.getElementById('id01').style.display='none'" class="gobackbtn">Go Back</button>
    </form-->
  <h1 style="font-family:verdana;">Contact Email</h1>
  
  <iframe src="https://docs.google.com/spreadsheets/d/1XZpNLnRCgzhusLLCu0fANCSpK5oOApjLrtZbKSuOkJw/htmlembed/sheet?gid=0&range=A1:B9" width="510" height="200" frameborder="1" marginheight="0" marginwidth="0"> </iframe>
        <br><br>
        <form id="test-form">
          <div class="container">
                
                <label><b>Name</b></label><br>
                <input type="text" placeholder="Enter Email Address" name="Name" required><br><br>
                
                <label><b>Email Address</b></label><br>
                <input type="text" placeholder="Enter Email Address" name="Email" required><br><br>
                          
                <div align="center" class="clearfix">
                  <button class="submitbtn" type="submit" id="submit-form">Submit</button>
                </div>
          </div>
      </form>
  </body>  
  
  <script>        
  $.fn.serializeObject = function()
  {
  var o = {};
  var a = this.serializeArray();
  $.each(a, function() {
  if (o[this.name]) {
  if (!o[this.name].push) {
  o[this.name] = [o[this.name]];
  }
  o[this.name].push(this.value || '');
  } else {
  o[this.name] = this.value || '';
  }
  });
  return o;
  };
  </script>
  <script>
  var timer;
  var inputVisitorName = $("#visitorNameInput"); 
  
  var $form = $('form#test-form'),
      url = 'https://script.google.com/macros/s/AKfycbx80HDsgZ9THobcXwVINGvcxkZAciVKbFAbYxRR_uUF4z_aL8Pr/exec'
        
  $('#submit-form').on('click', function(e) {
    e.preventDefault();
    var jqxhr = $.ajax({
      url: url,
      method: "GET",
      dataType: "json",
      data: $form.serializeArray()
    }).success(
            timer=setTimeout(function(){location.href = "http://visitorlog.dx.am/contactemailpage.php"},1000)
    );
  })
  </script>
  
</html>
