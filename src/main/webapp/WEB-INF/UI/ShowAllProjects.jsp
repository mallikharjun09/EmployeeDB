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
  <h2>List of Projects</h2>
                                                                                       
  <div class="table-responsive" ng-app="proApp" ng-controller="proController">          
       <div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">List of Projects</h3>
						
					</div>
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr>
							    <th>Project ID</th>
								<th>Project Name</th>
								<th>Project Head</th>
								<th>Client Name</th>
								<th>Client Address</th>
								<th>Start Date</th>
								
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="x in projects">
							    <td>{{x.projectId}}</td>
								<td>{{x.projectName}}</td>
								<td>{{x.projectHead}}</td>
								<td>{{x.clientName}}</td>
								<td>{{x.clientAddress}}</td>
								<td>{{x.startDate}}</td>
								<td>
							
								<a class="btn btn-default" href="updateProject?projectId={{x.projectId}}">
			                        <span class="glyphicon glyphicon-pencil"></span> 
			                    </a>
			                    <a class="btn btn-default" href="deleteProject?projectId={{x.projectId}}">
							        <span class="glyphicon glyphicon-remove"></span> 
							    </a>
							    
						   </td>
							</tr>					</tbody>
					</table>
				</div>
				<script>
			var app = angular.module('proApp', []);
			var link = "showAllPro";
			app.controller('proController', function($scope, $http) {$http.get(link).then(
						function(response) {
							$scope.projects = response.data;
							
						});
			
			});
			
			
		</script>

</div>

  
</div>





<body>

</body>
</html>