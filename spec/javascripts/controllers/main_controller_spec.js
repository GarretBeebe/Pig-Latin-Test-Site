'use strict';

describe('Main Controller', function() {
  var controller, http, mainCtl, scope, SubscribersService;

  beforeEach(module('Coalition'));

  beforeEach(inject(function($controller, $httpBackend, $rootScope, _SubscribersService_){
    controller = $controller;
    scope = $rootScope.$new();
    http = $httpBackend;
    SubscribersService = _SubscribersService_;
    mainCtl = $controller('MainCtrl', { $scope: scope });
    http.when('GET', /.+/).respond();
  }));

  it('main controller to be defined', function () {
    expect(mainCtl).toBeDefined();
  });
});
