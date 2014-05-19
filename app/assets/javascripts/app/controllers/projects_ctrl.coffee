class ProjectsCtrl extends BaseCtrl
  @inject '$scope', 'Project', 'Technology', '$stateParams'

  initialize: ->
    @$scope.currentTechnology = @$stateParams.technology

    @Technology.get().then (technologies) =>
      @$scope.technologies = technologies

      @Project.query(technology_id: @$stateParams.technology).then (projects) =>
        @$scope.projects = projects
