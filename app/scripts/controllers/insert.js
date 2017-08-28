'use strict';

var app = angular.module("marryApp", []);

app.controller("usercontroller", function($scope, $http) {
	$scope.insertData = function() {
		$http.post(
			"api/insert.php",
			{'firstname':$scope.firstname, 'lastname':$scope.lastname}
			).success(function(data) {
				alert(data);	
				$scope.firstname = null;
				$scope.lastname = null;
			});
		}	
});