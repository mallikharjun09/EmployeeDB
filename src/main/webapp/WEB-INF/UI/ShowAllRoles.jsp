<!doctype html>
<html class="no-js" lang="en">
   <head>
		<meta charset="utf-8">
		
		
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		
		<title>EmployeeDB</title>
		
		<meta name="description" content="">
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">		
	<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
			integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
			crossorigin="anonymous">
				
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
		
		<title>Roles</title>	
		
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
		
	</head>
	
	<body>
         
		 		
		<div class="panel panel-primary">
			<div class="panel-heading">Roles</div>	
				<div class="table-responsive" ng-app="myApp" ng-controller="customersCtrl">
					<table class="table table-bordered table-hover">
						<tr class="thead-inverse">
							<th>roleid</th>
							<th>rolename</th>
							<th>departmentid</th>
							<th>description</th>
							
						</tr>
						<tr ng-repeat="x in names">
							<td>{{x.roleid}}</td>
							<td>{{x.rolename}}</td>
							<td>{{x.departmentid}}</td>
							<td>{{x.description}}</td>
							
							<td>
							   <a class="btn btn-default" href="UpdateRoles.jsp?entity={{x.role_id}}">
							      		<span class="glyphicon glyphicon-pencil"></span> 
							   </a>
							   
							   <a class="btn btn-default" href="Mylcat/service/registerEmp/removeRoles?entity={{x._id}}">
							     		<span class="glyphicon glyphicon-remove"></span> 
							   </a>
							   
						   </td>
					 </tr>
					 
				</table>
				
			</div>	
			</div>
			
		    <div class="panel-footer panel-footer-info"></div>
		    
				<script>
						var app = angular.module('myApp', []);
						app.controller('customersCtrl', function($scope, $http) {
						$http.get("mylcat/services/registerEmp/getAllRoles").then(
						function(response) {
						$scope.names = response.data;
						});
					    });
						
				</script>
				
		</div>
			 
			 
			 
	</body>
</html>