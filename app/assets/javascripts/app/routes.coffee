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
        url: '/projects/:technology',
        templateUrl: "/templates/projects/index",
        controller: 'ProjectsCtrl'
      .state 'main.project',
        url: '/project/:id',
        templateUrl: "/templates/projects/show",
        controller: 'ProjectCtrl'
      .state 'main.about',
        url: '/about',
        templateUrl: "/templates/about/index",
        controller: 'AboutCtrl'
