<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>1128-Register</title>
    <link rel="icon" href="assets/img/logo/1128.jpg" type="image/png" />
    <link rel="shortcut icon" href="../assets/img/logo/1128.jpg" type="image/png" />
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">

</head>

<body style="background-color:beige;">

    <div class="container p-5">

        <div class="container p-5">
            <div class=" m-5 bg-transparent">
                <!-- Nested Row within Card Body -->
                <div class="row justify-content-center  w-75 p-3 m-5 m-auto rounded-3"
                    style="background-color:#000000; black;opacity: .7;">
                    <div class="col-lg-12 ">
                        <div class="p-0 m-3">
                            <div class="text-center">
                                <h1 class="h4 text-light mb-4">Create an Account!</h1>
                                <?php
                                if (isset($_GET["error"])) {
                                    if ($_GET["error"] == "EmptyInput") {
                                        echo "<div class='text-center card bg-danger text-white o-hidden border-0 shadow-lg my-5'><h1>You Forgot to fill all fields</h1></div>";
                                    } else if ($_GET["error"] == "passwordsDontMatch") {
                                        echo "<div class='text-center card bg-danger text-white o-hidden border-0 shadow-lg my-5'><h1>passwordsDontMatch</h1></div>";
                                    } else if ($_GET["error"] == "invalidUid") {
                                        echo "<div class='text-center card bg-danger text-white o-hidden border-0 shadow-lg my-5'><h1>invalidUserName</h1></div>";
                                    } else if ($_GET["error"] == "invalidemail") {
                                        echo "<div class='text-center card bg-danger text-white o-hidden border-0 shadow-lg my-5'><h1>invalidemail</h1></div>";
                                    } else if ($_GET["error"] == "UsernameTaken") {
                                        echo "<div class='text-center card bg-danger text-white o-hidden border-0 shadow-lg my-5'><h1>UsernameTaken</h1></div>";
                                    } else if ($_GET["error"] == "stmtfailed") {
                                        echo "<div class='text-center card bg-danger text-white o-hidden border-0 shadow-lg my-5'><h1>Something Went Wrong</h1></div>";
                                    }
                                }


                                ?>
                            </div>
                            <form action="assets/php/register.php" class="was-validated user login-clean" method="post">
                                <div class="form-group row ">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="firstName"
                                            name="firstName" pattern="[a-zA-ZÀ-ž\s]{1,}"onkeyup="this.value=this.value.replace(/[^a-zA-Z\s]/g,'');" placeholder="First Name" required>
                                        <div class="invalid-feedback">
                                            Input Your First Name
                                        </div>
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="lastName"
                                            name="lastName"  title="Must not contain any number or special character" onkeyup="this.value=this.value.replace(/[^a-zA-Z\s]/g,'');" pattern="[a-zA-ZÀ-ž\s]{1,}"  placeholder="Last Name" required>
                                        <div class="invalid-feedback">Input Your Last Name</div>
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <input type="username" class="form-control form-control-user" id="username"
                                        name="username" title="Must not contain any number or special character"  placeholder="Username" required>
                                    <div class="invalid-feedback">Input Username</div>
                                </div>
                                <div class="form-group mb-3">
                                    <input type="email" class="form-control form-control-user" id="email" name="email"
                                        placeholder="Email Address" required>
                                    <div class="invalid-feedback">Input Email</div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 ">
                                        <input type="password" class="form-control form-control-user w-100"
                                            id="password" minlength="8" maxlength="25" name="password" placeholder="Password" required>
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="password" class="form-control form-control-user w-100"
                                            name="rptpass"  minlength="8" maxlength="25"  id="rptpass" placeholder="Repeat Password" required>
                                    </div>
                                    <div hidden class="mb-3 col-sm-4 mb-3">
                                        <input type="text" class="form-control form-control-user w-100" name="role"
                                            id="role" placeholder="Client" value="Client">
                                    </div>
                                </div>
                                <input type="submit" href="index.php" class="btn btn-coffee d-block w-100"
                                    name="Register">
                            </form>
                            <hr>
                            <div class="text-center text-gray-600" style="text-decoration: none;">
                                <a class="text-center" style=" color: whitesmoke ; text-decoration: none;"
                                    href="index.php">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
</body>

</html>