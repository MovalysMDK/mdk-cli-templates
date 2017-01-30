(function () {
    'use strict';

    angular
        .module('MFApplication')
        .factory('loginService', loginService);

    /* @ngInject */
    function loginService($http, $q, $log, $window, RemoteApiHelper, API_QUERIES, localStorageService) {
        var service = {
            login: login,
            setAccessToken: setAccessToken,
            getAccessToken: getAccessToken,
            isTokenAvailable: isTokenAvailable,
        };

        // Access token as given by authentication portal
        var accessToken = null;
        // Access token retrieval date (for tracing purposes)
        var tokenRetrievalDate = null;
        // Authorization popup 
        var popup = null;
        //durée de validité du Token
        var dureeDuToken = 4 * 60 * 60 * 1000 - 5 * 60 * 1000; // 4 heures - 5 minutes (5 minutes par sécurité)

        return service;

        ////////////////
        function login() {

            var deferred = $q.defer();

            if (isTokenAvailable()) {
                deferred.resolve(localStorageService.get('accessToken'));
            } else {
                //si on a pas de réseau
                if (!angular.isUndefinedOrNull(navigator.connection)) {
                    if (navigator.connection.type === Connection.NONE) {
                        _handleAuthenticationFailure('Problème de connexion au réseau, vérifiez votre connexion');
                    } else {
                        _doRenewToken();
                    }
                } else {
                    _doRenewToken();
                }
            }

            return deferred.promise;

            // Handle authentication failure
            ///////////////////////////////////////
            function _handleAuthenticationFailure(error) {
                if (error.code === -2) { //si on a plus de réseau et qu'on clic sur connexion
                    deferred.reject('Problème de connexion au réseau, vérifiez votre connexion');
                } else {
                    deferred.reject(error);
                }

                _closePopup();
            }

            // Handle authorization answer 
            ///////////////////////////////////////
            function _handleAuthorization(event) {

                var url = event.url; // from loadstop event
                var splittedUrl;
                var hashbangParams;
                var token = null;
                var splittedHashbangParam;

                if (angular.isUndefined(url)) {
                    url = event.data; // from message event 
                }

                splittedUrl = url.split('#');

                if (!_checkUrl(splittedUrl)) {
                    return;
                }

                // Look for any token
                hashbangParams = splittedUrl[1].split('&');

                for (var i = 0; i < hashbangParams.length; i++) {
                    splittedHashbangParam = hashbangParams[i].split('=');
                    if (splittedHashbangParam.length === 2 && splittedHashbangParam[0] === 'access_token') {
                        // Extract token from query
                        token = splittedHashbangParam[1];

                        break;
                    }
                }
                setAccessToken(token);

                if (!!token) {
                    deferred.resolve(getAccessToken());
                } else {
                    _handleAuthenticationFailure('Authentication rejected.');
                }

                _closePopup();
            }

            // Handle inappbrowser popup close 
            ///////////////////////////////////////
            function _handlePopupExit(event) {
                if (popup !== null) {
                    _handleAuthenticationFailure('Fenêtre d\'authentification fermée par l\'utilisateur');
                }
            }

            // Token renewal process
            ///////////////////////////////////////
            function _doRenewToken() {
                var options = 'location=no,clearcache=yes,clearsessioncache=yes';
                var authQuery;

                // Show authentication page in separate browser (uses InAppBrowser plugin under Cordova)
                authQuery = RemoteApiHelper.buildFullQuery(RemoteApiHelper.getAuthenticationUrl(), API_QUERIES.AUTH);

                popup = window.open(authQuery, '_blank', options, {});

                // Intercepts any popup page load to handle authentication results (cordova version)
                popup.addEventListener('loadstop', _handleAuthorization);

                // Intercepts any error
                popup.addEventListener('loaderror', _handleAuthenticationFailure);

                // Intercepts popup message to handle authentication results (chrome webapp version)
                // Requires script injection using Chrome extension such as 'Custom JavaScript for websites' to post message after popup final redirection
                $window.addEventListener('message', _handleAuthorization);

                // Intercepts popup close to handle user return without authentication
                popup.addEventListener('exit', _handlePopupExit);
            }

        }

        // Check if token is available
        ///////////////////////////////////////
        function isTokenAvailable() {
            var accessToken = localStorageService.get('accessToken');
            var date = localStorageService.get('accessToken_date');
            var tokenRetrievalDate;
            var isTokenValid = false;
            var tempsRestantDeValiditeDuToken;

            /**
             * date : date de récupération du token
             * tokenRetrievalDate : now
             * tempsRestantDeValiditeDuToken : temps écoulé depuis la récupération du token (tokenRetrievalDate - date)
             */

            if (angular.isDefined(accessToken) && accessToken !== null) {
                //si pas la première fois qu'on lance l'appli
                if (date !== undefined && date !== null) {
                    tokenRetrievalDate = Date.now();
                    tempsRestantDeValiditeDuToken = tokenRetrievalDate - date;
                    isTokenValid = (tempsRestantDeValiditeDuToken < dureeDuToken);
                }
            }
            return isTokenValid;
        }

        // Check if url matches an authorization answer (positive or negative)
        ///////////////////////////////////////
        function _checkUrl(splittedUrl) {
            var res = true;
            var authorized;

            if (splittedUrl.length !== 2) {
                res = false; // URL does not match expected form
            }
            authorized = (splittedUrl[0] === 'https://testcloud.api.enedis.fr/redirect'); //NOSONAR : url Web services nécessaire

            if (!authorized) {
                // URL does not end by /oauth2/authorized, it is not the authorization answer yet
                res = false;
            }

            return res;
        }

        // Close authentication page
        ///////////////////////////////////////
        function _closePopup() {
            if (!angular.isUndefinedOrNull(popup)) {
                popup.close();
                popup = null;
            }
        }

        // Set access token
        ///////////////////////////////////////
        function setAccessToken(token) {
            if (token !== null) {
                $log.debug('Saving new access token (' + token.substr(0, 5) + '...)');
            }

            accessToken = token;
            tokenRetrievalDate = Date.now();

            // Store token in local storage
            localStorageService.set('accessToken', accessToken);
            localStorageService.set('accessToken_date', tokenRetrievalDate);
        }

        // Get access token
        ///////////////////////////////////////
        function getAccessToken() {
            return localStorageService.get('accessToken');
        }

    }
})();


