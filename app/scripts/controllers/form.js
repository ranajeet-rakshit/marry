'use strict';

/**
 * @ngdoc function
 * @name marryApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the marryApp
 */
angular.module('marryApp')
  .controller('FormCtrl', function ($scope, DataService) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    $scope.submit = function(){
    	var model = {
    		"id": $scope.id,
			"name": $scope.name,
			"contact_no":$scope.contact_no,
			"email":$scope.email
    	};
    	//var url = "http://localhost/marry_scripts/addUserData.php";

    	DataService.insertEmployee(model);
    };


  });
