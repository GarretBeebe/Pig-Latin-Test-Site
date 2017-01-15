'use strict';

angular.module('PigLatin', [
  'ngAnimate',
  'ngResource',
  'ngSanitize'
]);

// remove the jshint ignore once you begin writing new code
// jshint ignore: start
angular.module('PigLatin').run([
  '$http',
  '$rootScope',
  function($http, $rootScope){}
]);
// jshint ignore: end
