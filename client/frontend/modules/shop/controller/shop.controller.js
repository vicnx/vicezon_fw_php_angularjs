vicezon.controller("shopCtrl",["$scope","services","$css","products","brands", function($scope,services,$css,products,brands){
    $css.remove(['/vicezon_fw_php_angularjs/client/frontend/assets/css/long_header.css']);
    $css.add(['/vicezon_fw_php_angularjs/client/frontend/modules/shop/view/css/shop_style.css','/vicezon_fw_php_angularjs/client/frontend/assets/css/short_header.css']);
    // Filtered products list shop
    console.log($scope.products_filtered)
    $scope.page = 1;
    $scope.page_products = products;
    
    //default order
    $scope.order_products="idproduct";

    //add brands to filters
    $scope.brands = brands;
    console.log($scope.check_brands);
    //FILTER BRANDS
    if($scope.check_brands == undefined){
        $scope.check_brands = [];
    }else{
        filterbrand();
        console.log($scope.check_brands);
    }
    // $scope.check_brands = [];
    //onchecked se llama cuando hay algun cambio en un checkbox
    $scope.onChecked = filterbrand;

    function filterbrand(product){
        console.log($scope.check_brands);
        // console.log(vacio)
        //asignamos una variable llamada vacio (para comprobar cuando estan todas las marcas desseleccionadas.)
        var vacio=true;
        
        //realizamos un for para comprobar si alguno de las marcas es true y ponemos la variable vacio a false. 
        //Si ninguna es true, sale del bucle con la variable vacio a true.
        for (let x = 1; x < $scope.check_brands.length; x++) {
            if($scope.check_brands[x]==true){
                var vacio = false;
            }
        }
        //vaciamos todos los productos para poder añadir los nuevos despues
        $scope.page_products = [];

        // por cada producto miramos el check_brands y lo comprobamos con la marca del productos
        // este for va producto a producto comprobando el campo marca y viendo si coincide con check_brands
        // check_brands es un array con el id de la marca y un true o un false si esta marcado o no
        // console.log($scope.check_brands)
        angular.forEach(products, function(product){
            //se pone la pagina a la primera.
            $scope.page = 1;

            //comprobamos si la variable VACIO es true, si lo es mostramos todos los productos.
            if(vacio==true){
                $scope.page_products = products;
            }

            //aqui se comprueba si algunas de las marcas presionadas esta en el producto y si esta en check_brands a TRUE
            //si es asi se añade a page_products
            if($scope.check_brands[product.marca]){
                $scope.page_products.push(product); 
            }
        
        });
        //ahora realizamos una comprobacion del length de page_products, si es 0
        //se pone la variable no_products a true y con ng-show se muestra el mensaje en el html
        // if($scope.products_filtered.length==0){
        //     // console.log('TRUE')
        //     $scope.no_products=false;
        // }else{
        //     // console.log('FALSE')
        //     $scope.no_products=true;
        // }
        

        
    }
    //details
    $scope.details = function (idproduct) {
        window.location.href = "#/shop/"+idproduct;
    };
    //autocomplete
//     $scope.autocomplete_data=products;

//     $scope.onSelect= function(value) {
//         console.log(value);
//         $scope.search= value.nombre;
//   }

} ])