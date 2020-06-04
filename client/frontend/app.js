var vicezon = angular.module('vicezon', ['ngRoute','ngMaterial','ngMessages','angularCSS']);
vicezon.config(['$routeProvider', '$locationProvider',
function ($routeProvider, $locationProvider) {
    $routeProvider
        .when("/home", {
            templateUrl: "frontend/modules/home/view/home.view.html",
            controller: "homeCtrl",
            resolve:{
                brands: function(services){
                    return services.post('home', 'top_brands',0);
                },
                news: function(services){
                    return services.api_get(Apis.news);
                }

            }

        })
        .when("/contact", {
            templateUrl: "frontend/modules/contact/view/contact.view.html", 
            controller: "contactCtrl",
        })
        .otherwise({
            redirectTo: '/home'
        });            
}]);


