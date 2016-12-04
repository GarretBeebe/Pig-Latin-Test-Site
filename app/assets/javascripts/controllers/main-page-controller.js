'use strict';

angular.module('PigLatin').controller('MainCtrl', [
  '$scope',
  'PigLatinService',
  function($scope, PigLatinService){
    $scope.phrase = '';
    $scope.pigPhrase = '';

    function capitalize(str) {
      if ((str !== str.toLowerCase())) {
        str = str.toLowerCase();
        str = str.replace(/\b\w/, function(letter) {return letter.toUpperCase();});
      }
      return str;
    }

    function toPigLatin(str) {
      return str.replace(/\b(\w)(\S+)\b/g, '$2$1ay');
    }

    $scope.pigMeJS = function () {
      var finalArray = [];
      var wordArray = [];
      $scope.pigPhrase = '';

      wordArray = toPigLatin(String($scope.phrase)).split(' ');
      wordArray.forEach(function(str) {
        finalArray.push(capitalize(str));
      });
      $scope.pigPhrase = finalArray.join(' ');
    };

    $scope.pigMeRB = function () {
      $scope.pigPhrase = '';
      PigLatinService.get({'phrase': $scope.phrase}).$promise.then(
        function(result) {
          console.log(result);
          $scope.pigPhrase = result.pig_latin_phrase;
      });
    };
  }
]);
