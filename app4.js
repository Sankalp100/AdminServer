var app4 = angular.module('app4',['ui.router']);

app4.config(['$stateProvider', function($stateProvider){
  $stateProvider
  .state('Plan', {
    url: '/plan',
    templateUrl: 'Plan/plan.html',
    controller: 'studentController'
  })
  .state('Dietitian', {
    url: '/dietitian',
    templateUrl: 'Dietitian/dietitian.html',
    controller: 'studentController'
  })
  .state('RecipeType', {
    url: '/recipetypes',
    templateUrl: 'RecipeType/recipetype.html',
    controller: 'studentController'
  })
  .state('Package', {
    url: '/packages',
    templateUrl: 'Package/package.html',
    controller: 'studentController'
  })
  .state('Group', {
    url: '/cus_groups',
    templateUrl: 'Group/group.html',
    controller: 'studentController'
  })
  .state('Uom', {
    url: '/uoms',
    templateUrl: 'Uom/uom.html',
    controller: 'studentController'
  })
  .state('Signup', {
    url: '/customer_signups',
    templateUrl: 'Signup/signup.html',
    controller: 'studentController'
  });
  
  
  

}])