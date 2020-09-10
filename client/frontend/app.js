var vicezon = angular.module('vicezon', ['ngRoute','ngMaterial','ngMessages','angularCSS','ui.bootstrap']);
vicezon.config(['$routeProvider', '$locationProvider',
function ($routeProvider, $locationProvider) {
    $routeProvider
        .when("/home", {
            templateUrl: "frontend/modules/home/view/home.view.html",
            controller: "homeCtrl",
            resolve:{
                brands: function(services){
                    return services.post('home', 'get_brands');
                },
                news: function(services){
                    return services.api_get(Apis.news);
                },
                products: function(services){
                    return services.post('home','get_products');
                }
            }

        })
        .when("/contact", {
            templateUrl: "frontend/modules/contact/view/contact.view.html", 
            controller: "contactCtrl",
        })
        .when("/shop", {
            templateUrl: "frontend/modules/shop/view/shop.view.html", 
            controller: "shopCtrl",
            resolve:{
                products: function(services){
                    return services.post('shop','get_products');
                },
                brands: function(services){
                    return services.post('shop', 'get_brands');
                }
            }
        })

        .when("/shop/:id",{
            templateUrl: "frontend/modules/details/view/details.view.html", 
            controller: "detailsCtrl",
            resolve: {
                product_selected: function (services, $route) {
                    return services.get('shop', 'get_selected_product', $route.current.params.id);
                },
                brands: function(services){
                    return services.post('shop', 'get_brands');
                }
            }
        })
        
        .when("/login",{
            templateUrl: "frontend/modules/login/view/login.view.html",
            controller: "loginCtrl",
        })
        .when("/register",{
            templateUrl: "frontend/modules/login/view/register.view.html",
            controller: "registerCtrl",
        })

        .when("/login/active_user/:token",{
            resolve:{
                activate_user: function(services, $route){
                    return services.get('login', 'active_user',$route.current.params.token).then(function(response){
                        toastr.success("Cuenta activada con exito","Valid");
                        setTimeout(function () {
                            location.href = '#/login/';
                        }, 2000);
                    })
                }
            }
        })

        .when("/recover",{
            templateUrl: "frontend/modules/login/view/request_password.view.html",
            controller: "recoverCtrl",
        })

        .when("/recover/change_password/:token",{
            templateUrl: "frontend/modules/login/view/change_password.view.html",
            controller: "change_passwordCtrl",
        })

        .otherwise({
            redirectTo: '/home'
        });            
}]);


