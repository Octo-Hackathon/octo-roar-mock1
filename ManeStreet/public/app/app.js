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
      when('/details/:oppId', {
        templateUrl: 'app/partials/detail.html',
        controller: 'DetailCtrl'
      }).
      when('/edit/:oppId', {
        templateUrl: 'app/partials/edit.html',
        controller: 'EditCtrl'
      }).
      when('/view', {
        templateUrl: 'app/partials/view.html',
        controller: 'ManageCtrl'
      }).
      otherwise({
        redirectTo: '/view'
      });
  }]);
