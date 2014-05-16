angular.module('portfolio').

factory 'Project', (RailsResource) ->
  class extends RailsResource
    @configure url: '/api/projects', name: 'project'

    @recent: ->
      @$get "/api/projects/recent"
