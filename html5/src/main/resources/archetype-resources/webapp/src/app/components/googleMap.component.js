(function () {
    'use strict';

    // Usage:
    // Create a googleMap
    // Creates:
    // <google-map api-key="" address="" gmap-height="200px" gmap-width="100%"></google-map>

    angular
        .module('MFApplication')
        .component('googleMap', {
            template: '<div ng-style="{\'height\' : $ctrl.gmapHeight, \'width\' : $ctrl.gmapWidth }" id="map-canvas"></div>',
            //templateUrl: 'templateUrl',
            controller: GoogleMapController,
            bindings: {
                apiKey: '@?',
                address: '<?',
                gmapHeight: '@?',
                gmapWidth: '@?'
            },
        });

    GoogleMapController.inject = ['GoogleMapService'];
    function GoogleMapController(GoogleMapService) {
        var $ctrl = this;


        ////////////////

        $ctrl.$onInit = function () {
            if (!$ctrl.gmapWidth) {
                $ctrl.gmapWidth = '100%';
            }
            if (!$ctrl.gmapHeight) {
                $ctrl.gmapHeight = '500px';
            }

        };

        $ctrl.$onChanges = function (changesObj) {
            if (changesObj.address) {
                GoogleMapService.prepare($ctrl.apiKey).then(function () {
                    initMap($ctrl.address);
                });
            }
        };

        function initMap(address) {
            if (address) {
                var optionsCarte = {
                    zoom: 8,
                    center: new google.maps.LatLng(47.389982, 0.688877),
                    disableDefaultUI: true
                };
                var map = new google.maps.Map(document.getElementById('map-canvas'), optionsCarte);

                var geocoder = new google.maps.Geocoder();
                geocoder.geocode({
                    'address': address
                }, function (results, status) {
                    if (status === google.maps.GeocoderStatus.OK) {
                        map.setCenter(results[0].geometry.location);
                        var marker;
                        marker = new google.maps.Marker({
                            map: map,
                            position: results[0].geometry.location
                        });
                    } else {
                        alert('Geocode was not successful for the following reason: ' + status);
                    }
                });
            }
        }

    }
})();