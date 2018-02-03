<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		
		<meta charset="utf-8">
		
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		
		<title>New Role</title>
		
		<meta name="description" content="">
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="stylesheet" href="css/bootstrap.min.css">
		
		<link rel="stylesheet" href="css/datepicker.css">
		
		<link rel="stylesheet" href="css/registration-form-with-bootstarp.css">
		
		<link rel="stylesheet" href="css/bootstrap.min.css">
		
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
			integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
			crossorigin="anonymous"></script>
			
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"></link>
		
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>
		

		
		
		
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
		
		<script type="text/javascript" src="js/jquery.min.js"></script>
		
		<script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
		
		<script type="text/javascript" src="js/registration-form-with-bootstarp.js"></script>
		
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
		
		<title>Insert title here</title>
		
	</head>
	
	<body>
	
	
	<div class="container">
	  <div class="panel panel-primary"style="width: 750px; margin: 0px auto">
	    <div class="alert alert-success" id="msg"></div>
		  <div class="panel-heading">New Role</div>
			<div class="panel-body">
			
			  <form data-toggle="validator" role="form" action="mylcat/services/registerEmp/addRole" method="post">
				<div class="form-group">
		                     <label  for="inputRoleid" class="control-label">Role ID</label>
							  <input type="text" pattern="^[\[0-9]+$"  minlength="5" maxlength="5" class="form-control" data-error="Please provide a valid number as Role Id."  pattern="/^[0-9]^+$/" class="form-control" id="RoleId"  name="RoleId" placeholder="Role Id" required> 
							  <div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group"  ng-app="myApp" ng-controller="customersCtrl">
		                   <label for="input"  class="control-label">Role Name</label>
		                   <input type="text" pattern="[a-zA-Z\s]+" class="form-control" id="Rolename" name="Rolename" list="clist" placeholder="Role Name" required>
		                   <datalist id="clist">
		                   <option ng-repeat="x in names" value="{{x.name}}">{{x.name}}</option>
		                   </datalist>
		                   <div class="help-block with-errors"></div>
		          </div> 
							
					
                  <div class="form-group">
		                     <label  for="inputdepartmentid" class="control-label">Department ID</label>
							  <input type="text" pattern="^[\[0-9]+$"  minlength="5" maxlength="5" class="form-control" data-error="Please provide a valid number as department Id."  pattern="/^[0-9]^+$/" class="form-control" id="DepartmentId"  name="DepartmentId" placeholder="Department Id" required> 
							  <div class="help-block with-errors"></div>
				  </div>

                  <div class="form-group">
		                     <label  for="inputdepartmentid" class="control-label">Description</label>
							  <input type="text" pattern="[a-zA-Z\s]+" class="form-control" data-error="Please provide a valid number as department Id."  pattern="/^[0-9]^+$/" class="form-control" id="roleDescription"  name="roleDescription" placeholder="Description" required> 
							  <div class="help-block with-errors"></div>
				  </div>
		     
		      <div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" value="Added" onclick="myFunction(this.value)" class="btn btn-primary" id="register">Register</button>
		                        </div>
		    </div>
		     
		    
		     
		      </form>
		 
	   </div>
	</div>
  </div>
  
   
	
 </body>
</html>
		
		    
			
		    
		    
		    
		    
		