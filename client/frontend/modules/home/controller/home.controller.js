vicezon.controller("homeCtrl", ["$scope","$css","services","brands","news","products", function($scope,$css,services,brands,news,products) {
    // CSS
    $css.remove(['/vicezon_fw_php_angularjs/client/frontend/assets/css/short_header.css']);
    $css.add(['/vicezon_fw_php_angularjs/client/frontend/modules/home/view/css/home_style.css','/vicezon_fw_php_angularjs/client/frontend/assets/css/long_header.css']);

    //Pintar productos (carousel)
	$scope.products_carousel = products;
	
    //top Brands Load
    console.log(brands);
    longitud_brands=brands.length;
    $scope.position_brand=0;
    $scope.max_brands=4;
    $scope.brands=brands;

    $scope.showMore_brands = function(){
        if($scope.max_brands == longitud_brands){
            $scope.position_brand=0;
            $scope.max_brands=4;
        }else{
            $scope.position_brand=$scope.position_brand+4;
            $scope.max_brands=$scope.max_brands+4;
        }
    }

    //product top visited
    $scope.limit_more_visited_products=6;
    longitud_products=products.length;
    $scope.products_more_visited=products;
    $scope.showMore_products =function(){
        if(longitud_products == $scope.limit_more_visited_products){
            $scope.limit_more_visited_products=6;
        }else{
            $scope.limit_more_visited_products=$scope.limit_more_visited_products+6;
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
}])


