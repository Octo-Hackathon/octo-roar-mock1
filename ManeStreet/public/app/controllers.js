'use strict';

/* Controllers */

var my18fControllers = angular.module('my18fControllers', []);

/**
 * Controller for user list page, grabs user list
 */
my18fControllers.controller('ViewCtrl', function($scope) {

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
      'primarypoc': '',
      'placeofperform': ''
    };

    $scope.submit = function() {

      $http.post('/api/government/opportunities', { opportunity: this.opp })).success(function(data) {

        console.log('Added');
        console.log(data);

      });

    }

  }
);

