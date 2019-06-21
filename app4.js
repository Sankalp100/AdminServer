var app4 = angular.module('app4',['ui.router']);

app4.config(['$stateProvider', function($stateProvider){
  $stateProvider.state('Plan', {
    url: '/plan',
    templateUrl: 'Plan/plan.html',
    controller: 'studentController'
  })
  .state('Dietitian',{
      url: '/plan'
  });
  

}])