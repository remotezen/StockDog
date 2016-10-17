'use strict'

###*
# @ngdoc service
# @name stockDogApp.WatchlistService
# @description
# # WatchlistService
# Service in the stockDogApp.
###

angular.module('stockDogApp').service 'WatchlistService', ->
  # AngularJS will instantiate a singleton by calling "new" on this function
	loadModel = ->
		model =
			watchlists: localStorage['StockDog.watchlists'] if true then JSON.parse(localStorage['stockDog.watchlists'])
			else []
			nextId: localStorage['StockDog.nextId'] if true then parseInt(localhostStorate['StockDog.nextId'])
			else 0
		saveModel = ->
			localStorage['StockDog.watchlists'] = JSON.stringify(Model.watchlists)
			localStorage['StockDog.nextId'] = Model.nextId
		findById =  (listId) ->
		return _.find Model.watchlists, (watchlist) ->
			return watchlist.id == parseInt listId
		this.query = (listId) ->



  return
