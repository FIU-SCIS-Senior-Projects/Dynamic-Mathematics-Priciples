


<?php
include 'core/init.php';
include 'includes/overall/header.php';?>


<!-- <body style = background:#eee;>  -->  
   
		<div class="row">
				<!--left side-->
				<div class="col-md-3"></div>
				
				<!--center-->
				<div class="col-md-6">
					<!-- sign in form -->
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">Login</h3>
						</div>
						<div class="panel-body">
							<form action = "login.php" method= "POST">
								<div class="form-group">
									<label for="inputUsername1">User Name</label>
									<input name="username" type="username" class="form-control" id="inputUsername1" placeholder="Username">

								</div>
								<div class="form-group">
									<label for="inputPassword1">Password</label>
									<input name="password" type="password" class="form-control" id="inputPassword1" placeholder="Password">
								</div>
								<hr/>
								<button type="button" class="btn btn-success">Return</button>
								<button type="submit" class="btn btn-primary" >SignIn</button>
                                 <a href = 'forgot_pass.php'> Forgot Password? Click Here</a>
								<br>
							</form>
						</div>
					</div>
					<!-- EO sign in form -->
				</div>
				
				<!--right side-->
				<div class="col-md-3"></div>
		</div>
	
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  </body>

<?php include 'includes/overall/footer.php'; ?>


<?php

if(empty($_POST) === false){
	$username = $_POST['username'];
	$password = $_POST['password'];
	
	if(empty($username) === true || empty($password) === true){
		$errors[] = 'You need to enter a username and password.';
	}else if(user_exists($username) === false){
		$errors[] = 'There is no such username.';
	}else if(user_active($username) === false){
		$errors[] = 'You have to activate your account.';
	}else{
		$login = login($username, $password);
		if($login === false){
			$errors[] = 'That username/password combination is incorrect.';
		} else{
			$_SESSION['user_id'] = $login;
			//header('Location: index.php');
			echo 'LOGGED IN!';
			exit();
		}
	}
	

} else{
	$errors[] = 'No data received.';
}
//include 'includes/overall/header.php';
if(empty($errors) === false){
?>	
	<h2>We tried to log you in, but...</h2>
<?php
	echo output_errors($errors);
}
include 'includes/overall/footer.php';

?>

