vicezon.factory("services", ['$http','$q', function ($http, $q) {
    var serviceBase = '/vicezon_fw_php_angularjs/client/backend/index.php?module=';
    var obj = {};
//test2

        obj.post = function (module, functi, dada) {
         console.log("dentro de post");
          var defered=$q.defer();
          var promise=defered.promise;
          $http({
                method: 'POST',
                url: serviceBase + module + '&function=' + functi,
                data: dada,
            }).success(function(data, status, headers, config) {
                console.log(serviceBase + module + '&function=' + functi);
              //debugger;
               defered.resolve(data);
            }).error(function(data, status, headers, config) {
               defered.reject(data);
            });
          return promise;
        };
        

        obj.get = function (module, functi,dada="no") {
          if(dada == "no"){
            url=serviceBase + module + '&function=' + functi;
          }else{
            url=serviceBase + module + '&function=' + functi + '&param=' + dada;
          }
          var defered=$q.defer();
          var promise=defered.promise;
          $http({
                method: 'GET',
                url: url
            }).success(function(data, status, headers, config) {
               defered.resolve(data);
            }).error(function(data, status, headers, config) {
               defered.reject(data);
            });
          return promise;
      };

      obj.api_get = function (api) {
        var defered=$q.defer();
        var promise=defered.promise;
        $.ajax({
          async:false,
            url: Apis.news,
            success(json) {
              defered.resolve(json);          
            }    
        });
        return promise
    };
    return obj;
}]);
