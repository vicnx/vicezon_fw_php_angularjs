vicezon.controller("homeCtrl", ["$scope","$css","services", function($scope,$css,services) {
    // CSS
    $css.remove(['/vicezon_fw_php_angularjs/client/frontend/assets/css/short_header.css']);
    $css.add(['/vicezon_fw_php_angularjs/client/frontend/modules/home/view/css/home_style.css','/vicezon_fw_php_angularjs/client/frontend/assets/css/long_header.css']);

    $scope.items2 = [
        {name:"test",number:1,img:'https://bioritmefestival.org/wp-content/uploads/2017/11/img-test-300x300.png'},
        {name:"test",number:2,img:'https://bioritmefestival.org/wp-content/uploads/2017/11/img-test-300x300.png'},
        {name:"test",number:3,img:'https://bioritmefestival.org/wp-content/uploads/2017/11/img-test-300x300.png'},
        {name:"test",number:4,img:'https://bioritmefestival.org/wp-content/uploads/2017/11/img-test-300x300.png'},
        {name:"test",number:5,img:'https://bioritmefestival.org/wp-content/uploads/2017/11/img-test-300x300.png'},
        {name:"test",number:6,img:'https://bioritmefestival.org/wp-content/uploads/2017/11/img-test-300x300.png'},
        {name:"test",number:7,img:'https://bioritmefestival.org/wp-content/uploads/2017/11/img-test-300x300.png'},
        {name:"test",number:8,img:'https://bioritmefestival.org/wp-content/uploads/2017/11/img-test-300x300.png'},
        {name:"test",number:9,img:'https://bioritmefestival.org/wp-content/uploads/2017/11/img-test-300x300.png'},
    ];
    $scope.locacarousel = function(){
        console.log("carousel controller cargado.");
    }

}])
vicezon.directive("owlCarousel", function() {
	return {
		restrict: 'E',
		transclude: false,
		link: function (scope) {
			scope.initCarousel = function(element) {
			  // provide any default options you want
				var options = {
                    navigation: false, pagination: true, rewindNav : false
				};
				// init carousel
                var carousel = $(element).data('owlCarousel');
				if(!angular.isDefined(carousel)) {
                      $(element).owlCarousel(options);
				}
				scope.cnt++;
			};
		}
	};
})
vicezon.directive('owlCarouselItem', [function() {
	return {
		restrict: 'A',
		transclude: false,
		link: function(scope, element) {
		  // wait for the last item in the ng-repeat then call init
			if(scope.$last) {
				scope.initCarousel(element.parent());
			}
		}
	};
}]);

