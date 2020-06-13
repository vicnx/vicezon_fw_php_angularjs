vicezon.factory("loginService", ['$location', '$rootScope', 'services',
function ($location, $rootScope, services) {
	var service = {};
	service.login = login;
	service.logout = logout;
    return service;

    function login() {
        var token = localStorage.getItem("id_token");
        if(token){
            services.post('login','activity_check_token',token).then(function(response){
              if(response=="true"){
                services.post('login','get_user',token).then(function(response){
                  console.log(token)
                  localStorage.setItem('id_token',response['token']);
                  console.log(localStorage.getItem("id_token"))
                  $rootScope.login=true
                  $rootScope.username=response['result'][0]['username']
                  $rootScope.avatar=response['result'][0]['avatar']
                  
                })
              }else{
                localStorage.removeItem("id_token");
                toastr.error("Invalid token, Re Login","Error");
                setTimeout(function () {
                    location.href = '#/login/';
                }, 1000);
              }
            })
        }else{
            console.log("el puto token es null")
        }
    }

    function logout() {
        localStorage.removeItem("id_token");
        toastr.success("cerrada la sesiopn con exito","Logout");
        setTimeout(function () {
            location.href = '.';
        }, 2000);
    }
}]);
