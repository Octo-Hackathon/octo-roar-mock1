'use strict';

/* Controllers */

var my18fControllers = angular.module('my18fControllers', []);

/**
 * Controller for user list page, grabs user list
 */
my18fControllers.controller('ViewCtrl', function($scope, $http) {

});

/**
 * Controller for user add page, grabs form submit and does something with it
 */
my18fControllers.controller('CreateCtrl', function($scope) {

    $scope.opp = {
      'title',
      'description',
      'responseduedate',
      'type',
      'setaside',
      'buyername',
      'primarypoc',
      'placeofperform'
    };

    $scope.submit = function() {

      $http.post('/api/government/opportunities'+JSON.stringify({opportunity : $scope.opp})).success(function(data) {

        console.log('Added');
        console.log(data);

      });

    }

  }
);

