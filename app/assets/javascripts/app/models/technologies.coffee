angular.module('portfolio').

factory 'Technology', (RailsResource) ->
  class extends RailsResource
    @configure url: '/api/technologies', name: 'technology'

    @important: ->
      @$get "/api/technologies/important"
