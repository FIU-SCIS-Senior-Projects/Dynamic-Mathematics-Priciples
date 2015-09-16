<?php

include 'core/init.php';
include 'includes/overall/header.php';


echo "
	<form action = 'forgot_pass.php' method= 'POST'>
	Enter your username<br><input type = 'text' name= 'username'><p>
	Enter your email<br><input type = 'email'<p>
	<input type = 'submit' value = 'Submit' name = 'submit'>

</form>
";

if(isset($_POST['submit']))
{
	$username = $_POST['username'];
	$email = $_POST['email'];

	$query = mysql_query("SELECT * FROM users  WHERE username = '$username'");
	$numrow = mysql_num_rows($query);

	if($numrow != 0)
	{
		while($row = mysql_fetch_assoc($query))
		{
			$db_email = $row['email'];

		}
		if($email == $db_email)
		{
			$code = rand(10000,1000000);

			$to = $db_email;
			$subject = "Password Reset";
			$body ="
			This is an automated email.Please Do Not reply  to this email
			Click on the link below or pasted into your browser
			http://localhost/DynaMathVersion1/forgot_pass.php?code=$code&username=$username
			
			";

		}
		else
		{
			echo "Email is incorrect";
		}

	}
	else 
	{
		echo "That username doesnt exits!"

	}	
}

 ?>
