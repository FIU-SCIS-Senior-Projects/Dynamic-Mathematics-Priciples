<!DOCTYPE html>
<html lang="en">
 
<!-- header -->
<?php require 'header.php'; ?>


  <body>
    <p><br/></p>
<div class="row">
  <div class="col-md-2"></div>
  <div class="col-md-6">
  	<div class="panel panel-default">
 	 <div class="panel-body">
   <div class="page-header " style = "margin-top:5px; ">
  	<h3> Registration Form </h3>
	</div>
	<form class="form-horizontal" role= "form" >
  <div class="form-group">
    <label for="inputfn3" class="col-sm-2 control-label">Full Name</label>
    <div class = "col-sm-10">
    	<div class="input-group">
    		 <span class="input-group-addon" id="basic-addon1"> <span class="glyphicon glyphicon-user" id="basic-addon1"></span></span>
    		<input type="full name" class="form-control" id="inputfn3" placeholder="Full Name">
	</div>
	  </div>
	</div>
	<div class="form-group">
	<label for="inputEmail3" class="col-sm-2 control-label">Email</label>	
	<div class = "col-sm-10">
	<div class="input-group">         
     <span class="input-group-addon" id="basic-addon1">@</span>
	<input type="email" class="form-control" id="inputfn3" placeholder="Email">	
	 </div>
	</div>
</div>
<div class="form-group">
    <label for="inputGender2" class= "col-sm-2 control-label">Gender</label>
    <div class = "col-sm-10">
    	<div class="input-group">
    		 <span class="input-group-addon" id="basic-addon1"> <span class="glyphicon glyphicon-user" id="basic-addon1"></span></span>
    <input type="gender" class="form-control" id="inputGender2" placeholder="Gender">
</div>
</div>
  </div>
<div class="form-group">
    <label for="inputUserName2" class= "col-sm-2 control-label">Username</label>
    <div class = "col-sm-10">
    	<div class="input-group">
    		 <span class="input-group-addon" id="basic-addon1"> <span class="glyphicon glyphicon-user" id="basic-addon1"></span></span>
    <input type="dob" class="form-control" id="inputUsername2" placeholder="Username">
</div>
</div>
  </div>


  <div class="form-group">
    <label for="inputPassword3" class= "col-sm-2 control-label">Password</label>
    <div class = "col-sm-10">
    	<div class="input-group">
    		 <span class="input-group-addon" id="basic-addon1"> <span class="glyphicon glyphicon-star" id="basic-addon1"></span></span>
    <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
</div>
</div>
  </div>
<div class="form-group">
    <label for="inputPassword4" class= "col-sm-2 control-label">Confirm Password</label>
    <div class = "col-sm-10">
    	<div class="input-group">
    		 <span class="input-group-addon" id="basic-addon1"> <span class="glyphicon glyphicon-star" id="basic-addon1"></span></span>
    <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
</div>
</div>
  </div>
  <div class="form-group">
  	<div class = "col-sm-offeset-2 col-sm-10">
  <button type="submit" class="btn btn-primary">Register</button>
  <button type="button" class="btn btn-success">Back to Login</button>
</div>
</div>
</form>
  	</div>
</div>



  </div>
  <div class="col-md-2"></div>
</div>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  </body>
</html>