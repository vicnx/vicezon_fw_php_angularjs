vicezon.controller("loginCtrl",["$scope","services","$css", function($scope,services,$css){
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
                    setTimeout(' window.location.href = "#/home/";',1000);
                }
            })
        }

    };
    console.log("controler login loaded");
} ])