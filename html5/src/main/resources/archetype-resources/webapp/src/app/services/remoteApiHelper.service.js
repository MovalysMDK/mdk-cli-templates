(function () {
    'use strict';
    /**
     *  Helpers methods to build up queries to remote API
     *
     *  
     */
    angular
        .module('MFApplication')
        .factory('RemoteApiHelper', RemoteApiHelper);

    /* @ngInject */
    function RemoteApiHelper($log, API_PARAMS) {

        // Internal members
        var authenticationUrl = null; // Authentication service url
        var baseApiUrl = null; // Remote API Url (unversionned)

        // Service interface
        var service = {
            // Build up full query for given base URL, subpath, uid and query arguments
            // uid and query args are optional
            // [versionned] true by default
            // @returns url as string of the form '<baseUrl><subpath>[/<uid>][?<args>]
            buildFullQuery: function (baseUrl, subpath, uid, args) {
                var query = concatPaths(baseUrl, subpath);
                query = concatPaths(query, uid);

                if (args !== undefined && args !== null && !angular.equals('', args)) {
                    if (args[0] !== '?') {
                        query = query + '?';
                    }

                    query = query + args;
                }

                return query;
            },

            // Get authentication url
            getAuthenticationUrl: function () {
                return authenticationUrl;
            }
        };

        initialize();
        return service; // Return service interface


        // Internal methods

        // Ensure base url is properly formed and does not ends with a '/'
        function cleanUpBaseUrl(baseUrl) {
            if (baseUrl === undefined || baseUrl === null || angular.equals('', baseUrl)) {
                return '';
            }

            // Trim any starting '//'
            while (baseUrl[0] === '/' && baseUrl[1] === '/') {
                baseUrl = baseUrl.substr(1, baseUrl.length - 1);
            }

            // Trim any ending '/' 
            while (baseUrl[baseUrl.length - 1] === '/') {
                baseUrl = baseUrl.substr(0, baseUrl.length - 1);
            }

            return baseUrl;
        }

        // Ensure url subpath begins with a '/' and does not ends with a '/'
        function cleanUpSubpath(subpath) {
            subpath = cleanUpBaseUrl(subpath);

            if (subpath === undefined || subpath === null || angular.equals('', subpath)) {
                return '';
            }

            // Ensure path is starting with '/' 
            if (subpath[0] !== '/') {
                subpath = '/' + subpath;
            }

            return subpath;
        }

        // Contatenates url paths
        function concatPaths(path, subpath) {
            return path + cleanUpSubpath(subpath);
        }

        // Initialize service
        function initialize() {
            authenticationUrl = cleanUpBaseUrl(API_PARAMS.AUTH_URL);
            baseApiUrl = cleanUpBaseUrl(API_PARAMS.BASE_URL);

            if (baseApiUrl !== undefined && baseApiUrl !== null && !angular.equals('', baseApiUrl)) {
                $log.info('Base remote server URL: ' + baseApiUrl);
            } else {
                $log.error('No remote server URL provided.');
            }
        }
    }

})();
