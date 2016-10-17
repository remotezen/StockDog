'use strict'

describe 'Directive: stkWatchlistPanel.js', ->

  # load the directive's module
  beforeEach module 'stockDogApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<stk-watchlist-panel.js></stk-watchlist-panel.js>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the stkWatchlistPanel.js directive'
