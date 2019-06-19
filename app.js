var app = angular.module('app',['ngRoute']);

app.config(['$routeProvider', function($routeProvider){
  $routeProvider.when('/plan', {
    // template: '<strong>Plan<strong>'
    templateUrl: 'Plan/index.html'
  })
}]);