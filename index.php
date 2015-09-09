<?php
include 'core/init.php'; 
include 'includes/overall/header.php'; ?>



<body style = background:#eee;>    
   <div class="container">
		<br>
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