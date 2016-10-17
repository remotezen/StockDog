'use strict'

###*
 # @ngdoc function
 # @name stockDogApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the stockDogApp
###
angular.module 'stockDogApp'
  .controller 'AboutCtrl', ->
    @awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    return
