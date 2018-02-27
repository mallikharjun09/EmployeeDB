<html>
    <head>
        <style>
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}


span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
    </head>
    <body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="row">
    <div class="col-md-3">
    <div>
      <a class="brand" href="home">Mylcat-Employee-MGMT</a>
    </div>
    </div>
    <div class="col-md-9">
    <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
    <i class="fa fa-bars"></i>
    </button>
    </div>
    <div class="collapse navbar-collapse" id="menu">
    <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="home">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Employee Details <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="addEmployee">New Employee</a></li>
          <li><a href="getAll">Existed Employee List</a></li>
          <li><a href="#">Attendence Report</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Tasks <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="assignTask">Assign Task to Employee</a></li>
          <li><a href="#">Completed Task List</a></li>
          <li><a href="#">Pending Task List</a></li>
          <li><a href="#">All Tasks</a></li>
        </ul>
      </li>
	  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Roles <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="addRole">Add New Role</a></li>
          <li><a href="getAllRole">Show All Roles</a></li>
        </ul>
      </li>
	  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Projects <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="addProject">New Project</a></li>
          <li><a href="#">Future Projects</a></li>
          <li><a href="#">Status of Project</a></li>
          <li><a href="getAllProjects">All Projects</a></li>
        </ul>
      </li>
	  <li><a href="#" data-toggle="modal" data-target="#login"><span class="glyphicon glyphicon-log-in"></span>Sign In</a></li>        
    </ul>
    
  </div></div></div></div>
</nav>
  
<div class="container">
 <div class="modal fade" id="login" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
           <h2>Login Form</h2>

<form action="#">
 
  <div>
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
</div>

</body>
</html>