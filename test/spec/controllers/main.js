// Generated by CoffeeScript 1.10.0
(function() {
  'use strict';
  describe('Controller: MainCtrl', function() {
    var MainCtrl, scope;
    beforeEach(module('stockDogApp'));
    MainCtrl = {};
    scope = {};
    beforeEach(inject(function($controller, $rootScope) {
      scope = $rootScope.$new();
      return MainCtrl = $controller('MainCtrl', {});
    }));
    return it('should attach a list of awesomeThings to the scope', function() {
      return expect(MainCtrl.awesomeThings.length).toBe(3);
    });
  });

}).call(this);
