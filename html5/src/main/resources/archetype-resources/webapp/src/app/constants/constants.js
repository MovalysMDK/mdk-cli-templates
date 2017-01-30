(function () {
    'use strict';
    angular
        .module('MFApplication')
        .constant('API_PARAMS', {
            // PRODUCTION services configuration
            CLIENT_ID: '0be16268-ced7-49b2-a625-69f1d4e6dd41',
            AUTH_URL: 'https://testcloud.api.enedis.fr', //NOSONAR : url Web services nécessaire
            BASE_URL: 'https://testcloud.api.enedis.fr', //NOSONAR : url Web services nécessaire
            CACHE_DELAY: 3600000
        });
})();