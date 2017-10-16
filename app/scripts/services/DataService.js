'use strict';

/**
 * @ngdoc function
 * @name marryApp.service:DataService
 * @description
 * # DataService
 * Helper service to connect with back-end API and make $http requests
 */
angular.module("marryApp")
.factory('DataService', ['$http','$q', function($http, $q){
	var service={}

	service.insertEmployee = function(data){
		$http.post("http://localhost/matrimony/test.php", data)
		.then(successCallBack)
		.catch(errorCallBack);
		/*$http.post("api/test.php", data)
		.then(successCallBack)
		.catch(errorCallBack);*/
	}

	function successCallBack(data){
		return $q.resolve(data);
	}

	function errorCallBack(err){
		$q.reject(err);
	}

	return service;
}])
