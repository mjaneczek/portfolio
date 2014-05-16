class FooterCtrl extends BaseCtrl
  @inject '$scope', 'Project'

  initialize: ->
    @Project.recent().then (projects) =>
      @$scope.recentProjects = projects
