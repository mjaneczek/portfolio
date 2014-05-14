class @Routes
  constructor: (@stateProvider) ->
    @configureStates()

  configureStates: ->
    @stateProvider
      .state 'main',
        abstract: true
        templateUrl: "/templates/layouts/main"
      .state 'main.homepage',
        url: '/',
        templateUrl: "/templates/homepage/index"
