vicezon.controller("searchCtrl",["$scope","services","$rootScope", function($scope,services,$rootScope){
  services.post('home','get_products').then(function(response){
    var autocomplete=response;
    $scope.autocomplete_data=autocomplete;
    console.log(autocomplete);
    $scope.onSelect= function(value) {
        window.location.href = "#/shop/";
        $rootScope.search= value.nombre;
    }
  })

  services.post('home', 'get_brands').then(function(response){
    $scope.brands_search = response;
    console.log($scope.brands_search)
  })

} ])