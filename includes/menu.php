

<nav class="navbar navbar-inverse">
  <div class="container-fluid">

    <div class="navbar-header">
      <a class="navbar-brand" href="index.php">
        DynaMath
        <!-- example of an image -->
        <!-- <img alt="Brand" src="img/example.png" height="30" width="30"> -->
      </a>
    </div>

    <!-- <ul class="nav navbar-nav navbar-left">

        <!-- example of something active -->
      <!--  <li  class="active"><a> Thing 1 </a></li>

        <!-- example of something inactive -->
         <!-- <li class="inactive"><a>Thing 2 </a></li>
    </ul> 
    -->

    <form class="navbar-form navbar-left" action = "includes/searchbar.php" method = "post">
      <div class="form-group">
      <input type="text" name = "search" size = "40" maxlength = "50" class="form-control" placeholder="Search">
    </div>
    <button type="submit" name = "Submit" class="btn btn-default" value = "Search">Submit</button>
    </form>
    
      <ul class="nav navbar-nav navbar-right">
        
        <li class="inactive" > 
            <a href="registrationform.php">Register</a>
        </li>
        <li class="inactive" > 
            <a href="login.php"> Sign In</a>
        </li>
        <li class="inactive" > 
            <a href="Logout.php"> Logout</a>
        </li>
        
        
        <li class="dropdown">

          <!-- dropdown menu example -->
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown 
            <span class="caret"></span>
          </a>
          
          <ul class="dropdown-menu">
            <li class = "inactive">
                <a href="#">Sign In</a></li>
            <li class = "inactive">
                <a href="#">Register</a></li>
             <li><a hre = "#">Logout</a><li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Fun-Facts</a><li>
            <li><a href ="#">History</a><li>
            <li><a href ="#">Suggestions</a><li>  
            <li><a href ="#">Issues</a><li>
          </ul>
 
        </li>
      </ul><!-- EO NAVBAR RIGHT -->
    </div>
  </div>
</nav>