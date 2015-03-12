'use strict';

/* Controllers */

var my18fControllers = angular.module('my18fControllers', []);

/**
 * Controller for user list page, grabs user list
 */
my18fControllers.controller('ManageCtrl', function($scope, $http) {

    $http.get('/api/government/opportunities').success(function(data) {

      $scope.opportunities = data;

    });

    $scope.orderProp = '-id';

});

/**
 * Controller for user list page, grabs user list
 */
my18fControllers.controller('DetailCtrl', function($scope, $http) {

    $http.get('/api/government/opportunities/'+$routeParams.oppId).success(function(data) {

      $scope.opportunity = data;

    });

});

/**
 * Controller for user add page, grabs form submit and does something with it
 */
my18fControllers.controller('CreateCtrl', function($scope, $http) {

    $scope.opp = {
      'title': '',
      'description': '',
      'responseduedate': '',
      'opportunitytype': '',
      'setaside': '',
      'buyername': '',
      'primaypoc': '',
      'placeofperform': ''
    };

    $scope.submit = function() {

      $http.post('/api/government/opportunities', { opportunity: this.opp }).success(function(data) {

        console.log('Added');
        console.log(data);

      });

    }

  }
);

