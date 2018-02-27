<html>
   <head>
      <meta name="viewport" content="width=device-width, initial-scale=1">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
 <style>
       .panel-heading div {
			margin-top: -18px;
			font-size: 15px;
		}
		.panel-heading div span{
			margin-left:5px;
		}
		.panel-body{
			display: none;
		}
      </style>
      
   </head>
   <body>
       <%@ include file="menu.jsp" %><br/><br/><br/><br/>
       <div class="container">
  <h2>List of Employees</h2>
                                                                                       
  <div class="table-responsive" ng-app="moduleApp" ng-controller="moduleController">          
       <div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">List of module</h3>
						
					</div>
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr>
							    <th>Module Id</th>
								<th>Module Name</th>
								 <th>Project Id</th>
								 <th>Project Name</th>
								
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="x in module">
							    
								<td>{{x.moduleId}}</td>
								<td>{{x.moduleName}}</td>
								<td>{{x.projectId}}</td>
								<td>{{x.projectName}}</td>
								
								<td>
							
								<a class="btn btn-default" href="updateModule?moduleId={{x.moduleId}}">
			                        <span class="glyphicon glyphicon-pencil"></span> 
			                    </a>
							    
						   </td>
							</tr>					</tbody>
					</table>
				</div>
				<script>
			var app = angular.module('moduleApp', []);
			var link = "showAllModule";
			app.controller('moduleController', function($scope, $http) {$http.get(link).then(
						function(response) {
							$scope.employees = response.data;
							
						});
			
			});
			
			
		</script>
  </div>
  
</div>
   </body>
</html>