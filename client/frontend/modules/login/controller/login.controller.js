vicezon.controller("loginCtrl",["$scope","services","$css","loginService", function($scope,services,$css,loginService){
    $css.remove(['/vicezon_fw_php_angularjs/client/frontend/assets/css/long_header.css']);
    $css.add(['/vicezon_fw_php_angularjs/client/frontend/modules/login/view/css/login.css','/vicezon_fw_php_angularjs/client/frontend/assets/css/short_header.css']);
    $scope.login = {
        username:"test",
        password:"12345678"
    };


    $scope.SubmitLogin = function () {

        //comprobamos si el form es valido.
        if($scope.form_login.$valid == false){
            toastr.error("Revisa los campos del formulario","Error");

        }else{
            // console.log("es valido true");
            var data = {
                "username": $scope.login.username,
                "password": $scope.login.password,
            };
            services.post('login','login',data).then(function(response_json){
                if(response_json=="false"){
                    console.log("false");
                }else{
                    localStorage.setItem('id_token',response_json['token_jwt']);
                    toastr.success("Iniciado sesion con exito","Valid");
                    setTimeout(function () {
                        loginService.login();
                        location.href = '.';
                    }, 3000);
                }
            })
        }

    };
    console.log("controler login loaded");
} ])

vicezon.controller("registerCtrl",["$scope","services","$css","loginService", function($scope,services,$css,loginService){
    $css.remove(['/vicezon_fw_php_angularjs/client/frontend/assets/css/long_header.css']);
    $css.add(['/vicezon_fw_php_angularjs/client/frontend/modules/login/view/css/register.css','/vicezon_fw_php_angularjs/client/frontend/assets/css/short_header.css']);
    $scope.register = {
        username: "test",
        first_name: "test",
        last_name: "test",
        password: "12345678",
        rpassword: "12345678",
        email: "12345678",
    }

    $scope.SubmitRegister = function (){
        if($scope.form_register.$valid == false){
            toastr.error("Revisa los campos del formulario","Error");
        }else{
            var data = {
                "username": $scope.register.username,
                "password": $scope.register.password,
                "first_name": $scope.register.first_name,
                "last_name": $scope.register.last_name,
                "rpassword": $scope.register.rpassword,
                "email": $scope.register.email
            };
            services.post('login','register',data).then(function(response){
                console.log(response);
                if(response=="done"){
                    toastr.success("Registrado con exito, revisa tu correo para activar la cuenta","Valid");
                    setTimeout(function () {
                        location.href = '#/login/';
                    }, 2000);
                }else{
                    toastr.error(response,"ERROR");
                }
            })
        }
    }

} ])