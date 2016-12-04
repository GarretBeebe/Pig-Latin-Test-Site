'use strict';

angular.module('Coalition').controller('MainCtrl', [
  '$scope',
  'SubscribersService',
  function($scope, SubscribersService){
    var self = this;
    $scope.subscriber = '';
    self.view = 'home';

    $scope.submitSubscriber = function () {
      SubscribersService.save({'subscriber': $scope.subscriber}).$promise.then(
        function(result) {
          console.log(result.subscriber);
      });
    };
  }
]);
