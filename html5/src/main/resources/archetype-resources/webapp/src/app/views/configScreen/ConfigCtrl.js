'use strict';

angular.module('mfui').controller('ConfigCtrl', ['$scope', 'ConfigVMFactory', 'MFFormScopeBuilder', 'ConfigDataLoader', 'SaveConfigAction', 'localStorageService', 'loginService', '$state',
    function ($scope, ConfigVMFactory, MFFormScopeBuilder, ConfigDataLoader, SaveConfigAction, localStorageService, loginService, $state) {

        $scope.viewConfig = {
            viewModelFactory: ConfigVMFactory,
            dataLoader: ConfigDataLoader,
            formName: 'configurationForm',
            cancelable: false,
            hasSubControlBar: false,
            saveAction: SaveConfigAction,
            viewName: 'config',
            screenConfig: {
                //@generated-start[config-ctrl-exitState][X]
                exitState: 'HomeScreen',
                exitStateParams: {},
                //@generated-end
                exitOnSave: true,
                exitOnCancel: false,
                exitWithoutSaving: false,
                controlBarTitle: 'Config',
                hideControlBar: true
            }
        };

        MFFormScopeBuilder.init($scope).then(function (success) {
            $scope.rootActions.goInEditionMode();
        }, function (error) { });

        $scope.connect = connect;
        $scope.skipConnection = skipConnection;

        function connect() {

            localStorageService.remove('accessToken');
            localStorageService.remove('accessToken_date');

            //appel du service de login
            loginService.login().then(connectionSuccess, connectionError);

            function connectionSuccess(data) {
                $state.go('HomeScreen');
            }

            function connectionError(error) {
                console.info('ws login ko', error.message);
            }
        }

        function skipConnection() {
            $state.go($scope.viewConfig.screenConfig.exitState);
        }
    }
]);