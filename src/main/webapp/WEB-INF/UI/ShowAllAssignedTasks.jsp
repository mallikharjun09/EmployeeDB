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
		th{
		    text-align:center;
		}
		td{
		    text-align:center;
		}
      </style>
       
   </head>
   <body>
       <%@ include file="menu.jsp" %><br/><br/><br/><br/>
       <div class="container">
  <h2>List of Employees</h2>
                                                                                       
  <div class="table-responsive" ng-app="assignTaskApp" ng-controller="assignTaskController">          
       <div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">List of Employees</h3>
						
					</div>
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr>
								<th>Task Name</th>
								<th>Employee Name</th>
								<th>Start Date</th>
								<th>Start Time</th>
								<th>Progress</th>
							</tr>
						</thead>
						<tbody style="font-size:12px">
							<tr ng-repeat="x in assignedTasks">
							    <td>{{x.taskName}}</td>
								<td>{{x.empName}}</td>
								<td>{{x.startDate}}</td>
								<td>{{x.startTime}}</td>
								<td>{{x.taskProgress}}</td>
								<td>
							    <a class="btn btn-default" href="getAssignedTask?taskAssignId={{x.taskAssignId}}">
			                        <span class="glyphicon glyphicon-info-sign"></span> 
			                    </a>
								<a class="btn btn-default" href="updateAssignedTask?taskAssignId={{x.taskAssignId}}">
			                        <span class="glyphicon glyphicon-edit"></span> 
			                    </a>
							    
						   </td>
							</tr>					</tbody>
					</table>
				</div>
				<script>
			var app = angular.module('assignTaskApp', []);
			var link = "showAllAssignedTasks";
			app.controller('assignTaskController', function($scope, $http) {$http.get(link).then(
						function(response) {
							$scope.assignedTasks = response.data;
							
						});
			
			});
			
			
		</script>
  </div>
  
</div>
   </body>
</html>