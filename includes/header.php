<?php
include("includes/connection.php");
include("functions/functions.php");
?>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Home</title>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"><link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.css'><link rel="stylesheet" href="./css/header.css">

</head>
<body>
<?php 
			$user = $_SESSION['user_email'];
			$get_user = "select * from users where user_email='$user'"; 
			$run_user = mysqli_query($con,$get_user);
			$row=mysqli_fetch_array($run_user);
					
			$user_id = $row['user_id']; 
			$user_name = $row['user_name'];
			$first_name = $row['f_name'];
			$last_name = $row['l_name'];
			$describe_user = $row['describe_user'];
			$Relationship_status = $row['Relationship'];
			$user_pass = $row['user_pass'];
			$user_email = $row['user_email'];
			$user_country = $row['user_country'];
			$user_gender = $row['user_gender'];
			$user_branch = $row['user_branch'];
			$user_birthday = $row['user_birthday'];
			$user_image = $row['user_image'];
			$user_cover = $row['user_cover'];
			$recovery_account = $row['recovery_account'];
			$register_date = $row['user_reg_date'];
					
					
			$user_posts = "select * from posts where user_id='$user_id'"; 
			$run_posts = mysqli_query($con,$user_posts); 
			$posts = mysqli_num_rows($run_posts);
			?>
<!-- partial:index.partial.html -->
<nav class="navbar navbar-expand-custom navbar-mainbg">
        <a class="navbar-brand navbar-logo" href="#">Colleger</a>
        <button class="navbar-toggler" type="button" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars text-white"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <div class="hori-selector"><div class="left"></div><div class="right"></div></div>
                <li class="nav-item">
                    <a class="nav-link" href="home.php"><i class="fas fa-home"></i>Home</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="members.php"><i class="fa fa-search"></i>Find People</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="recommended.php"><i class="fa fa-handshake"></i>Recommended</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="messages.php?u_id=new"><i class="fa fa-commenting"></i>Messages</a>
                </li>
                <li class="nav-item">
                <a href='profile.php?<?php echo "u_id=$user_id" ?>'><?php echo "$first_name"; ?></a>
                </li>
                <?php
					
			echo"
					
	        <li class='dropdown'>
	          <a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'><span><i class='glyphicon glyphicon-chevron-down'></i></span></a>
	          <ul class='dropdown-menu'>
	            <li>
	           <a href='my_post.php?u_id=$user_id'>My Posts <span class='badge badge-secondary'> $posts</span></a>
	            </li>
	            <li>
	            <a href='edit_profile.php?u_id=$user_id'>Edit My Account</a>
	            </li>
	            <li role='separator' class='divider'></li>
	            <li>
	            <a href='logout.php'>Logout</a>
	            </li>
	          </ul>
	        </li>
	      </ul>
	      ";
	      ?>
	      <ul class="nav navbar-nav navbar-right">
	        <li class="dropdown">
	          <form class="navbar-form navbar-left" method="get" action="results.php">
		       
		        
		      </form>
	        </li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
</nav>
            </ul>
        </div>
        
	     
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
</nav>
    </nav>
<!-- partial -->
  <script src='https://code.jquery.com/jquery-3.4.1.min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'></script><script  src="./scripts/script.js"></script>

</body>
</html>
