<!doctype html>
<html>
<head>
<meta charset= "utf-8">
<title> email confirmation</title>
</head>
<?php 
include 'includes/overall/header.php';?>

<body>

<?php
include 'core/init.php';


$username = $_GET['username'];
$code = $_GET['code'];


$query = mysql_query("SELECT * FROM 'users' WHERE 'username'= '$username'");
while($row = mysql_fetch_assoc($query))
{
	$db_code= $row['confirm-code'];
}
if($code == $db_code)
{

	mysql_query("UPDATE 'users' SET 'confirmed'='1'");
	mysql_query("UPDATE 'users' SET 'confirm-code'='0'");

}
else
{
	echo "Username and code dont math";
}



?>
</body>
</html>
