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
    // console.log($scope.brands_search)
  })

}])

vicezon.controller("menuCtrl",["$scope","services","$rootScope","$route","loginService", function($scope,services,$rootScope,$route,loginService){
  loginService.login();
  // var token = localStorage.getItem("id_token");
  // if(token){
  //   services.post('login','activity_check_token',token).then(function(response){
  //     if(response=="true"){
  //       services.post('login','get_user',token).then(function(response){
  //         console.log(token)
  //         localStorage.setItem('id_token',response['token']);
  //         console.log(localStorage.getItem("id_token"))
  //         $scope.login=true
  //         $scope.username=response['result'][0]['username']
  //         $scope.avatar=response['result'][0]['avatar']
          
  //       })
  //     }else{
  //       localStorage.removeItem("id_token");
  //       toastr.error("Invalid token, Re Login","Error");
  //       setTimeout(function () {
  //           location.href = '#/login/';
  //       }, 1000);
  //     }
  //   })
  // }else{
  //   console.log("el puto token es null")
  // }
  $scope.desconectar = function(){
    loginService.logout();
  }
}])