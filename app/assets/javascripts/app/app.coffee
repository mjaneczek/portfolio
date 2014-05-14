class PortfolioApp
  constructor: ->
    @initializeApp()
    @configureApp()

  initializeApp: ->
    @app = angular.module 'portfolio', [
      'ui.router'
    ]

  configureApp: ->
    @app.config ($stateProvider, $urlRouterProvider) =>
      $urlRouterProvider.otherwise '/'
      @configureStates $stateProvider

  configureStates: (stateProvider) ->
    new Routes(stateProvider)

  new PortfolioApp()
