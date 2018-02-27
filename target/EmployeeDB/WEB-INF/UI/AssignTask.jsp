<html>
<head>
   <title>Employee Management</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
  <style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=date], input[type=time] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=date]:focus, input[type=time]:focus {
    background-color: #ddd;
    outline: none;
}


textarea {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

textarea:focus {
    background-color: #ddd;
    outline: none;
}


/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}
td{
    width:25%;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn1 {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn1, .signupbtn {
  float: left;
  width: 50%;
}




/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
    padding:5%;
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 


/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn1, .signupbtn {
       width: 100%;
    }
}
</style>
</head>
<body>
    <%@ include file="menu.jsp" %>
       
         <form class="modal-content" action="assignTask" method="post">
    
      <h1>Assign Task</h1>
      <p>Please fill in this form to assign task to an Employee</p>
      <hr>
      <label for="email"><b>Task Name</b></label>
      <input type="text" placeholder="Task Name" name="taskName" required>
      <div ng-app="newTaskApp" ng-controller="newTaskCtrl">
      <label for="email"><b>Choose Employee</b></label>
      <input type="text" placeholder="Employee Id / Name" name="empId" list="empList" required>
      <datalist id="empList">
          <option ng-repeat="x in employees" value="{{x.empId}}">{{x.empName}}</option>
      </datalist>
      </div>
   		<script>
			var app = angular.module('newTaskApp', []);
			var link = "showAllEmp";
			app.controller('newTaskCtrl', function($scope, $http) {$http.get(link).then(
						function(response) {
							$scope.employees = response.data;
						});
			
			});
		</script>
	  <table><tr><td>
      <label for="email"><b>Start Date</b></label></td><td>
      <input type="date" name="startDate" required></td><td></td><td>
	  <label for="email"><b>Start Time</b></label></td><td>
	  <input type="time" name="startTime" value="09:00" required></td></tr>
	  <tr><td>
	  <label for="email"><b>End Date</b></label></td><td>
      <input type="date" name="endDate" required></td><td></td><td>
      
      <label for="email"><b>endTime</b></label></td><td>
      <input type="time" name="endTime" required></td></tr>
	  </table>
      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn1">Cancel</button>
        <button type="submit" class="signupbtn">Assign</button>
      </div>
    
  </form>
   
</body>
</html>