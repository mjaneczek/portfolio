class HomepageCtrl extends BaseCtrl
  @inject '$scope', 'Technology'

  initialize: ->
    @Technology.important().then (technologies) =>
      @$scope.technologies = technologies
