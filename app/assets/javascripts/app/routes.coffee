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
        templateUrl: "/templates/homepage/index",
        controller: 'HomepageCtrl'
      .state 'main.projects',
        url: '/projects',
        templateUrl: "/templates/projects/index",
        controller: 'ProjectsCtrl'
      .state 'main.about',
        url: '/about',
        templateUrl: "/templates/about/index",
        controller: 'HomepageCtrl'
