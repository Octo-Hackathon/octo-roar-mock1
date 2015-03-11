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

    $scope.user = {
      first_name: '',
      last_name: '',
      address: '',
      phone: ''
    };

    $scope.submit = function() {

      alert('User added: '+this.user.first_name+' '+this.user.last_name);

    }

  }
);

