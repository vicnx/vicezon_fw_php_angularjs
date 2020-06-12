vicezon.controller("detailsCtrl", ["$scope","$css","services","product_selected","brands", function($scope,$css,services,product_selected,brands) {
    // CSS
    $css.remove(['/vicezon_fw_php_angularjs/client/frontend/assets/css/long_header.css']);
    $css.add(['/vicezon_fw_php_angularjs/client/frontend/modules/details/view/css/details_style.css','/vicezon_fw_php_angularjs/client/frontend/assets/css/short_header.css']);

    $scope.product = product_selected[0];
    console.log($scope.product);

     var colours = $scope.product.colores.split(':');
     colours.pop();
     $scope.colores = colours;

    //  $scope.marca = brands;

     angular.forEach(brands, function(brand, key){
        //aqui busco el nombre de la marca de ese producto
        console.log(brand.namebrand)
        if($scope.product.marca == brand.idbrand){
            $scope.marca = brand.namebrand; 
        }
    });

    //boton return
    $scope.return = function() {
        window.history.back();
      };
    
}])


