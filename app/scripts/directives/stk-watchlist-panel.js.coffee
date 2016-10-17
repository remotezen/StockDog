'use strict'

###*
 # @ngdoc directive
 # @name stockDogApp.directive:stkWatchlistPanel.js
 # @description
 # # stkWatchlistPanel.js
###
angular.module 'stockDogApp'
  .directive 'stkWatchlistPanel',($location, $modal, $routeParams, WatchlistService) ->
		{
			templateUrl: 'views/templates/watchlist-panel.html'
			restrict: 'E'
			scope: {}
			link: ($scope) ->
				$scope.watchlist = {}
				$scope.currentList = $routeParams.listId
				addListModal = $modal(
					scope: $scope
					template: 'views/templates/addlist-model.html'
					show:false)
				$scope.watchlists = WatchlistService.query()
				$scope.showModal = ->
					addListModal.$promise.then addListModal.show
					return
				$scope.createList = ->
					WatchlistService.save $scope.watchlist
					addListModel.hide()
					$scope.watchList = {}
					return


				$scope.deleteList = (list)->
					WatchlistService remove list
					$location.path '/'
					return
		}
