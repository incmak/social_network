<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Signin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Key Login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" media="all">
	<link href="//fonts.googleapis.com/css?family=Quattrocento+Sans:400,400i,700,700i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800" rel="stylesheet">
</head>
<body>
<section class="main">
	<div class="layer">
		<div class="bottom-grid">
			<div class="logo">
				<h1> <a href="index.html"><span class="fa fa-code"></span> Colleger</a></h1>
			</div>
			<div class="links">
				<ul class="links-unordered-list">
					<li class="active">
						<a class="" href="signin.php">Login</a>
					</li>
					<li class="">
						<a href="mailto:faisalhassan199@gmail.com" class="">About Us</a>
					</li>
					<li class="">
						<a href="signup.php" class="">Register</a>
					</li>
					<li class="">
						<a href="mailto:faisalhassan199@gmail.com" class="">Contact</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="content-w3ls">
			<div class="text-center icon">
				<span class="fa "><img src="images/logo.png" height="250px" width="250px" alt="colleger"></span>
			</div>
			<div class="content-bottom">
				<form action="login.php" method="post">
					<div class="field-group">
						<span class="fa fa-user" aria-hidden="true"></span>
						<div class="wthree-field">
							<input id="text1" type="text" value="" name="email" placeholder="Email" required>
						</div>
					</div>
					<div class="field-group">
						<span class="fa fa-lock" aria-hidden="true"></span>
						<div class="wthree-field">
							<input name="pass" id="myInput" type="Password" placeholder="Password">
						</div>
					</div>
					<div class="wthree-field">
						<button type="submit" name="login" id="signin" class="btn">Login</button>
					</div>
					<ul class="list-login">
						<li class="switch-agileits">
							<label class="switch">
								<input type="checkbox">
								<span class="slider round"></span>
								keep Logged in
							</label>
						</li>
						<li>
							<a href="#" class="text-right">forgot password?</a>
						</li>
						<li class="clearfix"></li>
					</ul>
					<ul class="list-login-bottom">
						<li class="">
							<a href="signup.php" class="">Create Account</a>
						</li>
						<li class="">
							<a href="mailto:faisalhassan199@gmail.com" class="text-right">Need Help?</a>
						</li>
						<li class="clearfix"></li>
					</ul>
					<?php include("login.php"); ?>
				</form>
			</div>
		</div>
		
			</div>
			</p>
			</div>
		</div>
    </div>
</section>

</body>
</html>
