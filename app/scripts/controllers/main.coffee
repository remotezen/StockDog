'use strict'

###*
 # @ngdoc function
 # @name stockDogApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the stockDogApp
###
angular.module 'stockDogApp'
  .controller 'MainCtrl', ->
    @awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    return
