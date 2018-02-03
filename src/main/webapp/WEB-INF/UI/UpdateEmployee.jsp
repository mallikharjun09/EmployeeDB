<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <style>
div.row{
   border: solid black thin;
   width:500px;
   background-color: #ffffb0;
    text-align: left;
	font-family: Times New Roman;
}
row{
   border:none;
   margin: 0 0  1px;
   padding: 0;
   text-align: center;
}

legend{
   font-size: 20px;
   background-color: blue;
   width: 98%;
   padding: 5px;
   text-align: center;
}

span{
   color: red;
   }
   
label.field{
   text-align: left;
   width: 100px;
   float: left;
   font-weight: bold;
}
input.text box-300{
   width: 300px;
   float: left;
}
img{
  max-width:120px;
}
input[type=file]{
padding:10px;

}
button{
   background-color: blue;
   }
</style> 
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/datepicker.css">
	<link rel="stylesheet" href="css/registration-form-with-bootstarp.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
	<script type="text/javascript"
		src="js/registration-form-with-bootstarp.js"></script>
	    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"></link>
        <script src="https://code.jquery.com/jquery-1.12.4.js">
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js">
        </script>
	</script>

	<title>Employee Validation</title>
</head>
<body>
	
  <center>  <div class="container">
	
  <div class="row">
     <legend><font color="white">Employee Details</font color></legend>
       <div class="col-md-10">
           
                
                <!-- Form Name -->
               
                <form data-toggle="validator" role="form" action="EmpValid.html" method="post">
                <!-- Text input-->
              
                 <div class="form-group">
                      <label class="control-label" for="inputName"><span>*</span>Name:</label>
					   <input type="text" pattern="[a-zA-Z\s]+" class="form-control" data-error="Please consider valid Employee Name." class="form-control" id="name" name="name" placeholder="Employee Name" required> 
					   <div class="help-block with-errors"></div>
				  </div>
				  

                  <div class="form-group">
                    <label for="inputMailId" class="control-label"><span>*</span>Mail Id:</label>
					<input type="text" pattern="/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/" 
                       class="form-control" data-error="Please consider valid Mail Id." placeholder="Mail_id" id="" name="mail_id" class="form-control"  required>
                    <div class="help-block with-errors"></div>
                  </div>

                  <div class="form-group">
                    <label for="inputPwd" class="control-label"><span>*</span>Password:</label>
					<input type="password" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required
                 id="pwd" data-error="Please consider a valid Password." placeholder="Password" name="pwd" required>
                      <div class="help-block with-errors"></div>
                    </div>
                  

				   <div class="form-group">
                      <label class="control-label" for="inputQualification"><span>*</span>Qualification:</label>
					   <input type="text" pattern="[a-zA-Z\s]+\@(([a-zA-Z\-])+\.)" class="form-control" data-error="Please consider Employee Qualification." class="form-control" id="qualification" name="qualification" placeholder="Qualification" required>
                       					   
					   <div class="help-block with-errors"></div>
				  </div>
                 
                  <div class="form-group">
                    <label for="inputPhone" class="control-label"><span>*</span>Phone:</label>
                      <input type="text" pattern="^[\[0-9]+$" maxlength="12" class="form-control" id="phone" data-error="Please provide the valid Phone number." placeholder="Mobile Number" name="phone" required>
                      <div class="help-block with-errors"></div>
                    </div>
                  
				  
				  <div class="form-group">
                    <label for="inputAddress" class="control-label"><span>*</span>Address:</label>
                    <input type="text" pattern="[a-zA-Z0-9\s]+" 
                           class="form-control" data-error="Please enter valid Address." placeholder="Address" id="address" name="address" class="form-control"  required>
                    <div class="help-block with-errors"></div>
                  </div>
				  
				  <div class="form-group">
                    <label for="inputRole_Id" class="control-label">Role_Id:</label>
                    <input type="text" pattern="[0-9\s]+" 
                             class="form-control" data-error="Please enter valid Role Id." placeholder="Role_Id" id="role_Id" name="role_Id" class="form-control"  required>
                    <div class="help-block with-errors"></div>
                  </div>
				  
				   <div class="form-group">
                    <label for="inputDept_Id" class="control-label">Department_Id:</label>
                    <input type="text" pattern="[0-9\s]+" 
                             class="form-control" data-error="Please enter valid Department Id." placeholder="Dept_Id" id="role_Id" name="dept_Id" class="form-control"  required>
                    <div class="help-block with-errors"></div>
                  </div>
				  
				  <div class="form-group">
                    <label for="inputSalary" class="control-label">Salary:</label>
                    <input type="text" pattern="[0-9]+(\.[0-9]{0,4})?%?" 
                             class="form-control" data-error="Please enter Salary." placeholder="Salary" id="salary" name="salary" class="form-control"  required>
                    <div class="help-block with-errors"></div>
                  </div>
				  
				  <div class="form-group">
                    <label for="gender" class="control-label">Gender:</label>
                    <input type="radio" name="gender" value="male"> Male
                    <input type="radio" name="gender" value="female"> Female </p>
					<div>
	           
                <!-- Button (Double) -->
				<div class="form-group">
                <center>
                  <label class="col-md-4 control-label" for="submit"></label>
                  <div class="col-md-8">
                   <button type="submit" id="register"><font color="white">Register</font color></button>
                  </center>  
                  
                </div>
                </div>
                <br/>
               
            </form>
			
      </div></center>
 
  <br/><br/>
  
  <script>
					var app = angular.module('myApp', []);
					var GET = window.location.search.substring(1);
				    var params=GET.split("=");
				    var entity="mylcat/services/registerEmp/editEmployee?entity="+params[1];
					app.controller('customersCtrl', function($scope, $http) {$http.get(entity).then(
					function(response) {
					$scope.names = response.data;
					});
					});
					
 </script>
  </body>
 </html>
 