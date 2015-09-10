<?php
include 'core/init.php';
include 'includes/overall/header.php';

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