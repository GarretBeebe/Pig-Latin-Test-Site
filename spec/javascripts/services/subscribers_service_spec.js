'use strict';

describe('Pig Latin Service', function () {
  var PigLatinService;

  beforeEach(module('PigLatin'));
  beforeEach(inject(function (_PigLatinService_) {
    PigLatinService = _PigLatinService_;
  }));

  it('should be defined', function () {
    expect(PigLatinService).toBeDefined();
  });
});
