'use strict';

angular.module('PigLatin').service('PigLatinService', [
  '$resource',
  function ($resource) {
    return $resource('/api/piglatin', {}, {
      get: {
        method:'get',
        params: {
          phrase: '@phrase'
        }
      }
    });
  }
]);
