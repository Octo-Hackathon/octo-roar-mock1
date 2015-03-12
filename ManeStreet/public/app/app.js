'use strict';

/* App Module */

var my18fApp = angular.module('my18fApp', [
  'ngRoute',
  'my18fControllers'
]);

my18fApp.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/create', {
        templateUrl: 'app/partials/create.html',
        controller: 'CreateCtrl'
      }).
      when('/manage', {
        templateUrl: 'app/partials/manage.html',
        controller: 'ManageCtrl'
      }).
      when('/view', {
        templateUrl: 'app/partials/view.html',
        controller: 'ViewCtrl'
      }).
      otherwise({
        redirectTo: '/view'
      });
  }]);
