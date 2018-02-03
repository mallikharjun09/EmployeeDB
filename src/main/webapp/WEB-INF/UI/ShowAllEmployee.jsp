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
	<script
			src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

	<title>Employee Validation</title>
</head>
</head>
<body>
			<div class="table-responsive" ng-app="myApp" ng-controller="customersCtrl">
					<table class="table table-bordered table-hover">
						<tr class="thead-inverse">						
							<th>Name</th>
							<th>Mail Id</th>
							<th>Password</th>
							<th>Qualification</th>
							<th>Phone</th>
							<th>Address</th>
							<th>Role Id</th>
							<th>Dept Id</th>
							<th>Gender</th>
						</tr>
						<tr ng-repeat="x in names">							
							<td>{{x.emp_name}}</td>
							<td>{{x.emp_mail}}</td>
							<td>{{x.emp_password}}</td>
							<td>{{x.emp_qualification}}</td>
							<td>{{x.emp_phone}}</td>
							<td>{{x.emp_address}}</td>
							<td>{{x.role_id}}</td>
							<td>{{x.dept_id}}</td>
							<td>{{x.emp_gender}}</td>
							<td>
							
								<a class="btn btn-default" href="UpdateEmployee?entity={{x.emp_id}}">
							     	 <span class="glyphicon glyphicon-pencil"></span> 
							    </a>
								<a class="btn btn-default" href="mylcat/services/registerEmp/removeEmployee?entity={{x.emp_id}}">
								     <span class="glyphicon glyphicon-remove"></span> 
								</a>
						    </td>
						</tr>
					</table>
				</div>	
				<script>
						var app = angular.module('myApp', []);
						app.controller('customersCtrl', function($scope, $http) {
						$http.get("getAllEmployees").then(
						function(response) {
						$scope.names = response.data;
						});
					    });
			  </script>		  
         
         
</body>
</html>