<!DOCTYPE html>
<?php
session_start();
include("includes/header.php");
?>
<?php 

if(!isset($_SESSION['user_email'])){
	
	header("location: index.php");

}
else{ ?>
<html>
<head>
	<title>Welcomme to Home</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="styles/home_style2.css" media="all"/>
</head>
<body>
<div class="row">
	
</div>
<div class="row">
	<div class="col-sm-12">
		<center><h2><strong>Recommended for you <?php echo "$user_branch";?> </strong></h2><br></center>
		<?php get_recom_posts();?>
	</div>
</div>
</body>
</html>
<?php } ?>

<!-- <span class='badge badge-secondary'> $count_msg</span> -->