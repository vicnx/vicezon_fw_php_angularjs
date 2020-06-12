vicezon.controller("homeCtrl", ["$scope","$css","services","brands","news","products","$rootScope", function($scope,$css,services,brands,news,products,$rootScope) {
    // CSS
    $css.remove(['/vicezon_fw_php_angularjs/client/frontend/assets/css/short_header.css']);
    $css.add(['/vicezon_fw_php_angularjs/client/frontend/modules/home/view/css/home_style.css','/vicezon_fw_php_angularjs/client/frontend/assets/css/long_header.css']);

    //Pintar productos (carousel)
	$scope.products_carousel = products;
	
    //top Brands Load
    longitud_brands=brands.length;
    $scope.position_brand=0;//empieza desde la numero 0
    $scope.max_brands=4;//solo las 4 primeras
    $scope.brands=brands;//pintar las marcas

    $scope.showMore_brands = function(){
        if($scope.max_brands == longitud_brands){
            $scope.position_brand=0;
            $scope.max_brands=4;
        }else{
            $scope.position_brand=$scope.position_brand+4;
            $scope.max_brands=$scope.max_brands+4;//modifica para las 4 siguientes
        }
    }

    //product top visited
    $scope.limit_more_visited_products=6;//solo 6 productos al inicio
    longitud_products=products.length;
    $scope.products_more_visited=products;//pintar los productos
    $scope.showMore_products =function(){
        if(longitud_products == $scope.limit_more_visited_products){
            $scope.limit_more_visited_products=6;//vuelve a los 6 primeros
        }else{
            $scope.limit_more_visited_products=$scope.limit_more_visited_products+6;//modificar al hacer click el limit
        }
    }
    $scope.reset_products = function(){
        $scope.limit_more_visited_products=6;
    }

    //news tablets (api)
    cont_news=4;
    longitud_news=news.articles.length;
    setTimeout(function(){
        $scope.news=news.articles.slice(0,cont_news);
        $scope.$apply();
    },500);
    $scope.showMore_news = function(){
        if(longitud_news == cont_news){
            cont_news=4;
        }else{
            cont_news=cont_news+4;
        }
        
        $scope.news=news.articles.slice(0,cont_news);
    }
    $scope.reset_news = function(){
        cont_news=4;
        $scope.news=news.articles.slice(0,cont_news);
    }

    //details
    $scope.details = function (idproduct) {
        window.location.href = "#/shop/"+idproduct;
    };

    // brand to shop
    $scope.brand_to_shop = function (idbrand) {
        $rootScope.check_brands=[];
        for (let index = 0; index < brands.length; index++) {
            if(index == idbrand){
                $rootScope.check_brands[index] = true;
            }
            
        }
        console.log($rootScope.check_brands);
        // angular.forEach(brands, function(brand){
        //     if(brand.idbrand == idbrand){
        //         $rootScope.check_brands = "pene";
        //     }
        // });
        // $rootScope.check_brands = obj;
        window.location.href = "#/shop/";
        
    };
}])


