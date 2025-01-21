<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if (isset($_POST['submit'])) {
  $username = $_POST['email'];
  $cnumber = $_POST['mobile'];
  $newpassword = $_POST['newpassword'];
  $confirmpassword = $_POST['confirmpassword'];

  // Check if passwords match
  if ($newpassword !== $confirmpassword) {
      echo "<script>alert('Passwords do not match!');</script>";
      echo "<script type='text/javascript'> document.location ='forgot-password.php'; </script>";
      exit;
  }

  // Hash the new password for storage
  $newpassword_hashed = md5($newpassword);

  // Secure SQL query to check if the email and mobile number exist
  $stmt = $con->prepare("SELECT id FROM tbluser WHERE Email = ? AND MobileNumber = ?");
  $stmt->bind_param("ss", $username, $cnumber);
  $stmt->execute();
  $result = $stmt->get_result();

  if ($result->num_rows > 0) {
      // Update password if the user is found
      $updateStmt = $con->prepare("UPDATE tbluser SET Password = ? WHERE Email = ? AND MobileNumber = ?");
      $updateStmt->bind_param("sss", $newpassword_hashed, $username, $cnumber);
      $updateStmt->execute();

      echo "<script>alert('Password reset successfully.');</script>";
      echo "<script type='text/javascript'> document.location ='login.php'; </script>";
  } else {
      echo "<script>alert('Invalid Email or Registered Contact Number');</script>";
      echo "<script type='text/javascript'> document.location ='forgot-password.php'; </script>";
  }
}


?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title> Farmer   Rental   System</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body class="goto-here">

<?php include_once('includes/header.php');?>
    <!-- END nav -->

    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.php">Home</a></span> <span>Contact us</span></p>
            <h1 class="mb-0 bread">Contact us</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section contact-section bg-light">
      <div class="container">
   
        <div class="row block-9">
          <div class="col-md-12 order-md-last d-flex">
            <form class="bg-white p-5 contact-form" method="post">
             <h3>Forgot Password!!!</h3>
              <div class="form-group">
                 <label class="">Email <abbr title="required" class="required">*</abbr>
                                                </label>
                 <input type="email" class="form-control" required="true" name="email">
              </div>
              <div class="form-group">
                <label class="">Mobile Number <abbr title="required" class="required">*</abbr>
                                                </label>
                 <input type="text" class="form-control"  name="mobile" required="true" maxlength="10" pattern="[0-9]+">
              </div>
              <form method="POST" action="your-reset-script.php" onsubmit="return validatePasswords()">
    <div class="form-group"> 
        <label>New Password <abbr title="required" class="required">*</abbr></label>
        <input class="form-control" type="password" name="newpassword" id="newpassword" required="true"/>
    </div>
    <div class="form-group">
        <label>Confirm Password <abbr title="required" class="required">*</abbr></label>
        <input class="form-control" type="password" name="confirmpassword" id="confirmpassword" required="true"/>
    </div>
    <button type="submit" name="submit" class="btn btn-primary">Reset Password</button>
</form>

<script>
function validatePasswords() {
    const newPassword = document.getElementById('newpassword').value;
    const confirmPassword = document.getElementById('confirmpassword').value;

    if (newPassword !== confirmPassword) {
        alert('Passwords do not match!');
        return false; // Prevent form submission
    }
    return true; // Allow form submission if passwords match
}
</script>

        
          </div>

       
        </div>
      </div> 
    </section>  

    <?php include_once('includes/footer.php');?>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>