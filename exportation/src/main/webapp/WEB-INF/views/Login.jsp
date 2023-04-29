<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./../assets/bootstrap-5.2.0-beta1-dist/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="./../assets/bootstrap-5.2.0-beta1-dist/css/bootstrap-grid.rtl.min.css">
    <link rel="stylesheet" href="./../assets/bootstrap-5.2.0-beta1-dist/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="./../assets/bootstrap-5.2.0-beta1-dist/css/bootstrap-reboot.rtl.min.css">
    <link rel="stylesheet" href="./../assets/bootstrap-5.2.0-beta1-dist/css/bootstrap-utilities.min.css">
    <link rel="stylesheet" href="./../assets/bootstrap-5.2.0-beta1-dist/css/bootstrap-utilities.rtl.min.css">
    <link rel="stylesheet" href="./../assets/bootstrap-5.2.0-beta1-dist/css/bootstrap.rtl.min.css">
    <link rel="stylesheet" href="./../assets/bootstrap-5.2.0-beta1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="./../assets/css/login.css">
    <title>Login</title>
</head>

<body>
    <div class="wrapper">
        <div class="container main">
            <div class="row">
                <div class="col-md-6 side-image">
                   
                </div>
                <div class="col-md-6 right">
                    <div class="input-box">
                        <header>Login</header>
                        <form action="/Login/validate_login" method="post">
                            <div class="input-field">
                                <input type="text" class="input" id="name" name="name" required autocomplete="off" value="John Doe">
                                <label for="ename">Name</label>
                            </div>
                            <div class="input-field">
                                <input type="password" class="input" name="password" id="password" required autocomplete="off" value="mypassword">
                                <label for="password">Password</label>
                            </div>
                            <div class="input-field">
                                <input type="submit" class="submit" value="Connect">
                            </div>
                        </form>
                        <div class="signin">
                            <span>If you haven't an account ? to create an account <br> <a href="./SignUp.html">click here</a> </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="./../assets/bootstrap-5.2.0-beta1-dist/js/bootstrap.bundle.min.js"></script>
    <script src="./../assets/bootstrap-5.2.0-beta1-dist/js/bootstrap.esm.min.js"></script>
    <script src="./../assets/bootstrap-5.2.0-beta1-dist/js/bootstrap.min.js"></script>
</body>

</html>