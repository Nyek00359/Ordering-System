<!-- Logout Previous Session-->
<?php session_start();
session_destroy(); $msg="";?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>1128-Login</title>
    <link rel="icon" href="assets/img/logo/1128.jpg" type="image/png" />
    <link rel="shortcut icon" href="assets/img/logo/1128.jpg" type="image/png" />
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<?php
    if(isset($_GET['requestSuccess'])){
        if($_GET['requestSuccess']=='1'){
            $msg ="You're request have been received please resubmit on the page after a minute";
            $disabled='disabled';
        }
        else {$msg="";$disabled='';}}
        else{$msg="";$disabled='';}
    
    ?>
<body style="background-color: beige;">

    <nav class="navbar navbar-light navbar-expand-md p-3 m-3">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="navcol-1"></div>
        </div>
    </nav>
    <?php include "assets/php/forgot.php" ?>
    <div class="container gap-3 p-3 m-auto rounded-3 align-middle">
        <div class="row bg-transparent rounded-5 align-middle">
            <div class="col-md-3 col-xxl-3 offset-xxl-0 p-3">
            </div>
            <div class="col-md-6">
                <div class="card bg-transparent border-0">
                    <section class="login-clean ">
                        <form style="background-color:#000000;opacity: .8;" method="post">
                            <h2 class="visually-hidden">Login Form</h2>
                            <div style="color: white;" class="illustration"><img src="assets/img/logo/1128.jpg"
                                    class="img-fluid"></div>
                                    <span class="bg-danger text-light mb-4"><?php echo $msg ?></span>
                            <div class="mb-3"><input <?php echo $disabled ?> class="form-control" type="text" name="username"
                                    placeholder="Email/Username"></div>
                            <div class="mb-3"><button class="btn btn-coffee d-block w-100"
                                    style="color: white;background-color: saddlebrown;border-color: saddlebrown;"
                                    name="submit" type="submit">Submit</button> 
                                    
                            </div><a class="signup text-light" href="register.php">Signup</a>
                            <a class="signup text-light small" href="index.php">Already have an Account? Login!</a>
                        </form>
                    </section>
                    
                </div>
            </div>
            <div class="col-md-3 col-xxl-3 offset-xxl-0 p-3">
            
            </div>
        </div>
    </div>
    
   
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
</body>

</html>