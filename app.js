var app = angular.module('app',['ui.router']);

app.config(['$stateProvider', function($stateProvider){
  $stateProvider.state('firstMessage', {
    url: '/plan',
    templateUrl: 'Plan/plan.html'
  });
  

}])