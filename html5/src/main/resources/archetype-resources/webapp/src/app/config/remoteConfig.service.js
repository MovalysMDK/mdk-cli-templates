(function () {
    'use strict';
    /**
    *  Remote API access settings     
    */
    angular
        .module('MFApplication')
        .factory('API_QUERIES', API_QUERIES);

    /* @ngInject */
    function API_QUERIES(API_PARAMS) {
        var service = {
            /* Token request path */
            AUTH: '/v1/oauth2/authorize?client_id=%CLIENT_ID%&response_type=token&redirect_uri=https://testcloud.api.enedis.fr/redirect',
            /* Max number of results per query (max is 1000 for APIGEE) */
            /* See http://apigee.com/docs/app-services/content/working-queries#limit */
            LIMIT: 1000
        };

        angular.extend(service, API_PARAMS);

        service.AUTH = service.AUTH.replace('%CLIENT_ID%', API_PARAMS.CLIENT_ID);

        return service;
    }
})();    