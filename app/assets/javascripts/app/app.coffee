class PortfolioApp
  constructor: ->
    @initializeApp()
    @configureApp()

  initializeApp: ->
    @app = angular.module 'portfolio', [
      'ui.router',
      'rails',
      'pascalprecht.translate'
    ]

  configureApp: ->
    @app.config ($stateProvider, $urlRouterProvider, $translateProvider) =>
      $urlRouterProvider.otherwise '/'
      @configureStates $stateProvider
      @configureTranslations $translateProvider

  configureStates: (stateProvider) ->
    new Routes(stateProvider)

  configureTranslations: (translationsProvider) ->
    translationsProvider.useStaticFilesLoader
      prefix: 'locales/', suffix: '.json'

    translationsProvider.preferredLanguage 'pl'

  new PortfolioApp()
