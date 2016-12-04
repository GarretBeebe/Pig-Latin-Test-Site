'use strict';

describe('Subscribers Service', function () {
  var SubscribersService;

  beforeEach(module('Coalition'));
  beforeEach(inject(function (_SubscribersService_) {
    SubscribersService = _SubscribersService_;
  }));

  it('should be defined', function () {
    expect(SubscribersService).toBeDefined();
  });
});
