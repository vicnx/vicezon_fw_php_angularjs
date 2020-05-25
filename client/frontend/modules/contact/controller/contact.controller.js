vicezon.controller("contactCtrl", ["$scope", function($scope) {
	$scope.contact = {
        inputName:"",
        inputSurName:"",
        inputEmail: "",
        inputSubject: "",
        inputMessage: ""
    };
    // currentNavItem="contact";
    $scope.SubmitContact = function () {

        //comprobamos si el form es valido.
        if($scope.form_contact.$valid == false){
            console.log("es INvalido false");
        }else{
            console.log("es valido true");
        }
        // var data = {"name": $scope.contact.inputName, "email": $scope.contact.inputEmail, 
        // "matter": $scope.contact.inputSubject, "message": $scope.contact.inputMessage,"token":'contact_form'};
        // var contact_form = JSON.stringify(data);
        
        // services.post('contact', 'send_cont', contact_form).then(function (response) {
        //     if (response == 'true') {
        //             toastr.success('El mensaje ha sido enviado correctamente', 'Mensaje enviado',{
        //             closeButton: true
        //         });
        //     } else {
        //             toastr.error('El mensaje no se ha enviado', 'Mensaje no enviado',{
        //             closeButton: true
        //         });
        //     }
        // });
    };
}]);
