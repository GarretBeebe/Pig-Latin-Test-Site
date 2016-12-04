'use strict';

describe('Messages Service', function () {
  var MessagesService;

  beforeEach(module('Coalition'));
  beforeEach(inject(function (_MessagesService_) {
    MessagesService = _MessagesService_;
  }));

  it('should be defined', function () {
    expect(MessagesService).toBeDefined();
  });
});
