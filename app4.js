var app4 = angular.module('app4',['ui.router']);

app4.config(['$stateProvider', function($stateProvider){
  $stateProvider
  .state('Plan', {
    url: '/Plan',
    templateUrl: 'Plan/plan.html',
    controller: 'planController'
  })
  .state('Dietitian', {
    url: '/dietitian',
    templateUrl: 'Dietitian/dietitian.html',
    controller: 'dietitiansController'
  })
  .state('RecipeType', {
    url: '/recipetypes',
    templateUrl: 'RecipeType/recipetype.html',
    controller: 'recipetypeController'
  })
  .state('Package', {
    url: '/packages',
    templateUrl: 'Package/package.html',
    controller: 'packageController'
  })
  .state('add-package',{
    url: '/add-package',
    templateUrl: "Package/add-package.html",
    controller: 'packageController'
  })
  .state('Group', {
    url: '/cus_groups',
    templateUrl: 'Group/group.html',
    controller: 'groupController'
  })
  .state('Uom', {
    url: '/uoms',
    templateUrl: 'Uom/uom.html',
    controller: 'uomController'
  })
  .state('Signup', {
    url: '/customer_signups',
    templateUrl: 'Signup/signup.html',
    controller: 'studentController'
  })
  .state('Recipe',{
    url: '/Recipe',
    templateUrl: "Recipe/recipe.html",
    controller: "recipeController"
  })
  .state('Ingredients',{
    url: '/Ingredients',
    templateUrl: "ingredients/index.html",
    controller: "ingredientsController"
  })
  .state('add-ingredients',{
    url: '/add-ingredients',
    templateUrl: "ingredients/add-ingredients.html",
    controller: "ingredientsController"
  })
  .state('Customer-List',{
    url: '/Customer-List',
    templateUrl: "Customer_list/index.html",
    controller: "studentController"
  })
  .state('Customer-Import',{
    url: '/Customer-Import',
    templateUrl: "customer_import/customer-import.html",
    controller: "customerImportController"
  })
  .state('Customer-Package',{
    url: '/Customer-Package',
    templateUrl: "customer_package/index.html",
    controller: "studentController"
  });
  
}
])

