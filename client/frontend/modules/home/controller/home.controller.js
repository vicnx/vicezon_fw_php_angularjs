vicezon.controller("homeCtrl", ["$scope","$css","services","brands","news", function($scope,$css,services,brands,news) {
    // CSS
    $css.remove(['/vicezon_fw_php_angularjs/client/frontend/assets/css/short_header.css']);
    $css.add(['/vicezon_fw_php_angularjs/client/frontend/modules/home/view/css/home_style.css','/vicezon_fw_php_angularjs/client/frontend/assets/css/long_header.css']);
    
    //get carousel elements
    services.get('home', 'carousel_home').then(function (response) {
		$scope.products = response;
	});
	
    //top Brands Load
    console.log(brands);
    longitud_brands=brands.length;
    cont_brands_principio=0;
    cont_brands_final=4;
    $scope.brands=brands.slice(cont_brands_principio,cont_brands_final);

    //boton Showmore_brands
    $scope.showMore_brands = function(){
        if(cont_brands_final == longitud_brands){
            cont_brands_principio=0;
            cont_brands_final=4;
        }else{
            cont_brands_principio=cont_brands_principio+4;
            cont_brands_final=cont_brands_final+4;
        }
        $scope.brands=brands.slice(cont_brands_principio,cont_brands_final);
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


