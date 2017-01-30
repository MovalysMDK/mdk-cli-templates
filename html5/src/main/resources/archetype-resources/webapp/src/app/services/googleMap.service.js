(function () {

    'use strict';
    angular
        .module('MFApplication')
        .factory('GoogleMapService', GoogleMapService);

    /* @ngInject */    
    function GoogleMapService($q) {

        var URL = 'https://maps.googleapis.com/maps/api/js?callback=googleMapHasLoaded';

        var deferred = null;

        var service = {
            prepare: prepare
        };
        return service;

        /////////////////////////////////////////////////////////////////////
        function prepare(apiKey) {
            if (deferred) {
                return deferred.promise;
            }
            if(apiKey) {
                URL = 'https://maps.googleapis.com/maps/api/js?key=' + apiKey + '&callback=googleMapHasLoaded';
            }
            deferred = $q.defer();

            var script = document.createElement('script');
            script.type = 'text/javascript';
            script.setAttribute('async', '');
            script.setAttribute('defer', '');
            script.src = URL;

            // Loading went well
            window.googleMapHasLoaded = function () {
                deferred.resolve();
                window.googleMapHasLoaded = null;
            };
            if (script.readyState) {  // IE
                script.onreadystatechange = function GMapsOnError__IE() {
                    if (script.readyState === 'error') {
                        script.onreadystatechange = null;
                        _resetAfterError();
                    }
                };
            } else {  // Others
                script.onerror = function GMapsOnError() {
                    script.onerror = null;
                    _resetAfterError();
                };
            }

            var doc = document.getElementById('map-canvas');
            doc.appendChild(script);

            return deferred.promise;
        }

        function _resetAfterError() {
            deferred.reject();
            deferred = null;
            window.googleMapHasLoaded = null;
        }

    }
})();