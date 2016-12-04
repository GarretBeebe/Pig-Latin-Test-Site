'use strict';

describe('Main Controller', function() {
  var controller, http, mainCtl, scope, PigLatinService;

  beforeEach(module('PigLatin'));

  beforeEach(inject(function($controller, $httpBackend, $rootScope, _PigLatinService_){
    controller = $controller;
    scope = $rootScope.$new();
    http = $httpBackend;
    PigLatinService = _PigLatinService_;
    mainCtl = $controller('MainCtrl', { $scope: scope });
    http.when('GET', /.+/).respond();
  }));

  it('main controller to be defined', function () {
    expect(mainCtl).toBeDefined();
  });
});
