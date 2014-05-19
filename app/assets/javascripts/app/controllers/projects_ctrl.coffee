class ProjectsCtrl extends BaseCtrl
  @inject '$scope', 'Project', 'Technology', '$stateParams'

  initialize: ->
    @Technology.get().then (technologies) =>
      @$scope.technologies = technologies

      @Project.query(technology: @$stateParams.technology).then (projects) =>
        @$scope.projects = projects
