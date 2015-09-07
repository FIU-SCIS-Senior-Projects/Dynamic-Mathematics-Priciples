<html>
<!-- header -->
<?php require 'header.php'; 
?>

<body style = background:#eee;>    
   <div class="container">
  <p><br/></p>
    <div class="row">
  <div class="col-md-8"></div>
  <div class="col-md-4"></div>
<div class="panel panel-default">
  <div class="panel-body">
  <div class="page-header">
  <h3>Login</h3>
</div>
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
  <p><br/></p>
</form>


  </div>

</div>
</div>
</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  </body>
</html>