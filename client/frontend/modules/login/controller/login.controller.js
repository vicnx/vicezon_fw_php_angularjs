vicezon.controller("loginCtrl",["$scope","services","$css","loginService", function($scope,services,$css,loginService){
    $css.remove(['/vicezon_fw_php_angularjs/client/frontend/assets/css/long_header.css']);
    $css.add(['/vicezon_fw_php_angularjs/client/frontend/modules/login/view/css/login.css','/vicezon_fw_php_angularjs/client/frontend/assets/css/short_header.css']);
    
    if(loginService.check_if_log()==true){
        location.href = '#/home/';
    }
    
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

//REGISTER
vicezon.controller("registerCtrl",["$scope","services","$css","loginService", function($scope,services,$css,loginService){
    $css.remove(['/vicezon_fw_php_angularjs/client/frontend/assets/css/long_header.css']);
    $css.add(['/vicezon_fw_php_angularjs/client/frontend/modules/login/view/css/register.css','/vicezon_fw_php_angularjs/client/frontend/assets/css/short_header.css']);

    if(loginService.check_if_log()==true){
        location.href = '#/home/';
    }

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
//RECOVER
vicezon.controller("recoverCtrl",["$scope","services","$css","loginService", function($scope,services,$css,loginService){
    $css.remove(['/vicezon_fw_php_angularjs/client/frontend/assets/css/long_header.css']);
    $css.add(['/vicezon_fw_php_angularjs/client/frontend/modules/login/view/css/register.css','/vicezon_fw_php_angularjs/client/frontend/assets/css/short_header.css']);

    if(loginService.check_if_log()==true){
        location.href = '#/home/';
    }

    $scope.send_mail = {
        email: "andanivicente@gmail.com"
    }

    $scope.SubmitSend_mail = function (){
        if($scope.form_send_mail.$valid == false){
            toastr.error("Revisa los campos del formulario","Error");
        }else{
            var data = {
                "email": $scope.send_mail.email
            };
            services.post('login','recover_send_mail',data).then(function(response){
                toastr.success("Correo de recuperacion enviado","Valid");
                setTimeout(function () {
                    location.href = '#/login/';
                }, 2000);
            })
        }
    }
} ])

//CHANGE PASSWORD
vicezon.controller("change_passwordCtrl",["$scope","services","$css","loginService","$route", function($scope,services,$css,loginService,$route){
    $css.remove(['/vicezon_fw_php_angularjs/client/frontend/assets/css/long_header.css']);
    $css.add(['/vicezon_fw_php_angularjs/client/frontend/modules/login/view/css/register.css','/vicezon_fw_php_angularjs/client/frontend/assets/css/short_header.css']);

    if(loginService.check_if_log()==true){
        location.href = '#/home/';
    }

    $scope.change_password = {
        password: "",
        rpassword: ""
    }

    $scope.SubmitChange_password = function (){
        if($scope.form_recover.$valid == false){
            toastr.error("Revisa los campos del formulario","Error");
        }else{
            var data = {
                "password": $scope.change_password.password,
                "token_recover": $route.current.params.token
            };
            
            services.post('login','recover_password',data).then(function(response){
                console.log(response)
                if(response=="fail"){					
                    toastr.error("Token invalido","Invalid Token");
                    setTimeout(function () {
                        location.href = '#/home/';
                    }, 2000);
                }else{					
                    toastr.success("Contraseñá cambaida con exito","Done");
                    setTimeout(function () {
                        location.href = '#/login/';
                    }, 2000);
                }
            })
        }
    }
} ])