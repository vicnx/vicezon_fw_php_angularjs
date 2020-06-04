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