vicezon.controller("contactCtrl", ["$scope","services", function($scope,services) {
    // $scope.contact.mapa = "test";
    $scope.contact = {
        inputName:"",
        inputSurName:"",
        inputEmail: "",
        inputMessage: ""
    };

    $scope.SubmitContact = function () {

        //comprobamos si el form es valido.
        if($scope.form_contact.$valid == false){
            //si hay algun campo con error
            console.log("es INvalido false");
            toastr.error("Revisa los campos del formulario","Error");
        }else{
            console.log("es valido true");
            var data = {
                "name": $scope.contact.inputName,
                "surname": $scope.contact.inputSurName,
                "email": $scope.contact.inputEmail, 
                "message": $scope.contact.inputMessage
            };
            var message_data = JSON.stringify(data);
            console.log(message_data);
            services.post('contact','send_mail',message_data)
            .then(function(response){
                toastr.success("Gracias por enviar el mensaje, en 24 horas un agente se pondra en contacto.","Mensaje Enviado");
                console.log(response)
            })
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
    $scope.initialize = function() {
        var ontinyent = {lat: 38.8220593, lng: -0.6063927};
        $scope.mapOptions = {
            zoom: 10,
            center: ontinyent
        };
        $scope.map = new google.maps.Map(document.getElementById('map'), $scope.mapOptions);
        var contentString = '<div id="content">'+
        '<div id="siteNotice">'+
        '</div>'+
        '<h1 id="firstHeading" class="firstHeading">Vicezon Shop</h1>'+
        '<div id="bodyContent">'+
        '<p>We are a technology products company with the most competitive prices</p>'+
        '<p>Attribution:<b> Vicezon</b>, <a href="http://localhost/vicezon</a> '+
        '</p>'+
        '</div>'+
        '</div>';
        var infowindow = new google.maps.InfoWindow({
            content: contentString
          });

        var marker = new google.maps.Marker({
            position: ontinyent,
            map: $scope.map,
            title: 'ViceZon'
          });
          marker.addListener('click', function() {
            infowindow.open(map, marker);
          });
          
    }

    $scope.loadmapa = function() {
        var script = document.createElement('script');
        script.type = 'text/javascript';
        script.src = Apis.maps;
        document.body.appendChild(script);
        setTimeout(function() {
            $scope.initialize();
        }, 1500);
    }
}]);

