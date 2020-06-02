var vicezon = angular.module('vicezon', ['ngRoute','ngMaterial','ngMessages','angularCSS']);
vicezon.config(['$routeProvider', '$locationProvider',
function ($routeProvider, $locationProvider) {
    $routeProvider
        .when("/home", {
            templateUrl: "frontend/modules/home/view/home.view.html",
            controller: "homeCtrl"
        })
        .when("/contact", {
            templateUrl: "frontend/modules/contact/view/contact.view.html", 
            controller: "contactCtrl",
        })
        .otherwise({
            redirectTo: '/home'
        });            
}]);


