<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AJS Practice</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<style>
         table, th , td {
            border: 1px solid grey;
            border-collapse: collapse;
            padding: 5px;
            text-align: center;
         }
         
         table tr:nth-child(odd) {
            background-color: #f2f2f2;
         }
         
         table tr:nth-child(even) {
            background-color: #ffffff;
         }
</style>
<body ng-app="mainApp"
	ng-init="countries = [{locale:'en-US',name:'United States'}, {locale:'en-GB',name:'United Kingdom'}, {locale:'en-FR',name:'France'}]">

	<p>
		Enter your Name: <input type="text" ng-model="name">
	</p>
	<p>
		Hello <span ng-bind="name"></span>!
	</p>
	<p>List of Countries with locale:</p>

	<ol>
		<li ng-repeat="country in countries">{{ 'Country: ' +
			country.name + ', Locale: ' + country.locale }}</li>
	</ol>

	<div ng-controller="HelloController">
		<h2>Welcome {{helloTo.title}} to the world of Tutorialspoint!</h2>
	</div>

	<div
		ng-init="quantity = 1;cost = 30; student = {firstname:'Mahesh',lastname:'Parashar',rollno:101};marks = [80,90,75,73,60]">
		<p>Hello {{student.firstname + " " + student.lastname}}!</p>
		<p>Expense on Books : {{cost * quantity |
			currency:'&#8377;&nbsp;'}}</p>
		<p>Roll No: {{student.rollno}}</p>
		<p>Marks(Math): {{marks[3]}}</p>
	</div>

	<div ng-controller="studentController">
		Enter first name: <input type="text" ng-model="student.firstName"><br>
		<br> Enter last name: <input type="text"
			ng-model="student.lastName"><br> <br> You are
		entering (UC): {{student.fullName()| uppercase}}<br> <br>
		You are entering (LC): {{student.fullName()| lowercase}}<br> <br>
		<table>
			<tr>
				<td>fees:</td>
				<td>{{student.fees | currency:'&#8360;&nbsp;'}}</td>
			</tr>
			<tr>
				<td>
					<p>
						Type a letter to filter subjects: <input type="text"
							ng-model="test">
					</p>
				</td>
			</tr>
			<tr>
				<td>Subject:</td>
				<td>
					<ul>
						<li
							ng-repeat="subject in student.subjects | filter: test |orderBy:'marks'">
							{{ subject.name + ', marks:' + subject.marks }}</li>
					</ul>
				</td>
			</tr>
		</table>
		<table border=1 class=table-bordered style="color:blue;background-color:white;">
			<tr>
				<th ng-click="student.orderByMe('name')">Name</th>
				<th ng-click="student.orderByMe('marks')">Marks</th>
			</tr>
			<tr ng-repeat="subject in student.subjects | orderBy:myOrderBy">
				<td>{{subject.name}}</td>
				<td>{{subject.marks}}</td>
			</tr>
		</table>
		
		<table border = "0">
            <tr>
               <td><input type = "checkbox" ng-model = "enableDisableButton">Disable Button</td>
               <td><button ng-disabled = "enableDisableButton">Click Me!</button></td>
            </tr>
            
            <tr>
               <td><input type = "checkbox" ng-model = "showHide1">Show Button</td>
               <td><button ng-show = "showHide1">Click Me!</button></td>
            </tr>
            
            <tr>
               <td><input type = "checkbox" ng-model = "showHide2">Hide Button</td>
               <td><button ng-hide = "showHide2">Click Me!</button></td>
            </tr>
            
            <tr>
               <td><p>Total click: {{ clickCounter }}</p></td>
               <td><button ng-click = "clickCounter = clickCounter + 1">Click Me!</button></td>
            </tr>
         </table>

	</div>

	<script>
		var mainApp = angular.module("mainApp", []);

		mainApp.controller('studentController', function($scope) {
			$scope.student = {
				firstName : "Mahesh",
				lastName : "Parashar",
				fees : 500,

				subjects : [ { name : 'Physics', marks : 70 },
							 { name : 'Chemistry', marks : 80 }, 
							 { name : 'Math', marks : 65 }, 
							 { name : 'Social', marks : 75 } ],

				fullName : function() {
					var studentObject;
					studentObject = $scope.student;
					return studentObject.firstName + " "
							+ studentObject.lastName;
				},

				orderByMe : function(x) {
					$scope.myOrderBy = x;
				}

			};
		});

		mainApp.controller("HelloController", function($scope) {
			$scope.helloTo = {};
			$scope.helloTo.title = "AngularJS";
		});
	</script>

</body>
</html>