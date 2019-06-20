var app = angular.module('app',['ngRoute']);

app.config(['$routeProvider', function($routeProvider){
  $routeProvider
  .when('/plan', {
    // template: '<strong>Plan<strong>'
    templateUrl: 'Plan/plan.html',
    controller: 'Plan/plan.js'
  })
  .when('/dietitian', {
    templateUrl: 'Dietitian/dietitian.html',
    controller: 'Dietitian/dietitian.js'
  })
  .when('/signup', {
    templateUrl: 'Signup/signup.html',
    controller: 'Signup/signup.js'
  })
  .when('/group', {
    // template: '<strong>group<strong>'
    templateUrl: 'Group/group.html',
    controller: 'Group/group.js'
  })
  .when('/package', {
    templateUrl: 'Package/package.html',
    controller: 'Package/package.js'
  })
  .when('/recipe', {
    templateUrl: 'Recipe/recipe.html',
    controller: 'Recipe/recipe.js'
  })
  .when('/uom', {
    templateUrl: 'Uom/uom.html',
    controller: 'Uom/uom.js'
  })
  .when('/recipetype', {
    templateUrl: 'Recipetype/recipetype.html',
    controller: 'Recipetype/recipetype.js'
  })
  .when('/Dashboard', {
    redirectTo: function(){
      alert("Sorry! not implemented yet... will take you to plan");
      return '/plan';
    }
  })
  .when('/', {
    template: '<h1>FitMix<h1>'
  })
  .otherwise({
    template: '<h1>FitMix No contant<h1>'
  })

}]);

app.controller('message', ['$scope', function($scope) {
  $scope.a=10;
  $scope.b=20;

}])