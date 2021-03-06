'use strict';

/* Controllers */

var my18fControllers = angular.module('my18fControllers', []);

/**
 * Controller for user list page, grabs user list
 */
my18fControllers.controller('ManageCtrl', function($scope, $http) {

    $http.get('/api/government/opportunities?'+Math.floor(Math.random()*1000)).success(function(data) {

      $scope.opportunities = data;

    });

    $scope.orderProp = '-id';

});

/**
 * Controller for user list page, grabs user list
 */
my18fControllers.controller('ViewCtrl', function($scope, $http) {

    $http.get('/api/contractor/opportunities?'+Math.floor(Math.random()*1000)).success(function(data) {

      $scope.opportunities = data;

    });

    $scope.orderProp = '-id';

});

/**
 * Controller for user list page, grabs user list
 */
my18fControllers.controller('SearchCtrl', function($scope, $http) {

    $scope.search = {
      criteria: '',
      value: ''
    };

    $scope.submit = function() {



    }

});

/**
 * Controller for user list page, grabs user list
 */
my18fControllers.controller('DetailCtrl', function($scope, $http, $routeParams) {

    $http.get('/api/government/opportunities/'+$routeParams.oppId).success(function(data) {

      $scope.opp = data;

    });

});

/**
 * Controller for user list page, grabs user list
 */
my18fControllers.controller('EditCtrl', function($scope, $http, $routeParams, $route, $location) {

    $http.get('/api/government/opportunities/'+$routeParams.oppId).success(function(data) {

      $scope.opp = data;

    });

    $scope.opp = {
      id: '',
      title: '',
      opportunitytype: '',
      description: '',
      setaside: '',
      publishdate: '',
      responseduedate: '',
      status: '',
      buyername: '',
      placeofperform: '',
      primaypoc: '',
      user_id: '',
      created_at: '',
      updated_at: ''
    };

    $scope.submit = function() {

      $http.put('/opportunities/'+$routeParams.oppId, {opportunity: this.opp}).success(function(data) {

        alert('Opportunity Updated');
        $route.reload();

      });

    }

    $scope.publish = function() {

      $http.get('/api/government/opportunities/publish/'+$routeParams.oppId).success(function(data) {

        alert('Opportunity Published');
        $location.path('/manage');

      });

    }

});

/**
 * Controller for user add page, grabs form submit and does something with it
 */
my18fControllers.controller('CreateCtrl', function($scope, $http, $location) {

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

        alert('Opportunity Created');
        $location.path('/edit/'+data.id);

      });

    }

  }
);