var app = angular.module('app',['ngRoute']);

app.config(['$routeProvider', function($routeProvider){
  $routeProvider.when('/plan', {
    // template: '<strong>Plan<strong>'
    templateUrl: 'Plan/plan.html',
    controller: 'Plan/plan.js'
  })
  .when('/dietitian', {
    templateUrl: 'Dietitian/dietitian.html',
    controller: 'Dietitian/dietitian.html'
  })

}]);

app.controller('message', ['$scope', function($scope) {
  $scope.a=10;
  $scope.b=20;

}])