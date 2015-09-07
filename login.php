<!-- header -->
<?php require 'header.php';?>
<?php

// Grab User submitted information
$username = $_POST["username"];
$password = $_POST["password"];

// Connect to the database
$con = mysql_connect("localhost","root","","login");
// Make sure we connected succesfully
if(!$con)
{
    die('Connection Failed'.mysql_error());
}

// Select the database to use
mysql_select_db("login",$con);

$result = mysql_query("SELECT username, password FROM users WHERE username = $username");

$row = mysql_fetch_array($result);

if($row["username"]==$username && $row["password"]==$password)
    echo"You are a validated user.";
else
    echo"Sorry, your credentials are not valid, Please try again.";
?>