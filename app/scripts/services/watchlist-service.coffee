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
			watchlists: localStorage['StockDog.watchlists'] if true then			 JSON.parse(localStorage['stockDog.watchlists'])
			else []
			nextId: localStorage['StockDog.nextId'] if true then parseInt			(localStorage['StockDog.nextId'])
			else 0
		return			
	saveModel = ->
		localStorage['StockDog.watchlists'] = JSON.stringify(Model.watchlists)
	localStorage['StockDog.nextId'] = Model.nextId
	findById =  (listId) ->
		return _.find Model.watchlists, (watchlist) ->
			return watchlist.id == parseInt listId
	this.query = (listId) ->
		if listId
			return findById listId
		else
			return Model.watchlists

	this.save = (watchlist) ->
		watchlist.id = Model.nextId++
		Model.watchlists.push watchlist
		saveModel

	this.remove  = (watchlist) ->
		_.remove Model.watchlists, (list)->
		return list.id == watchlist.id
		saveModel
	Model = loadModel
