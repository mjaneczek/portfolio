angular.module('portfolio').

factory 'Job', (RailsResource) ->
  class extends RailsResource
    @configure url: '/api/jobs', name: 'job'
