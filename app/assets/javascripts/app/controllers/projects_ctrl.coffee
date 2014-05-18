class ProjectsCtrl extends BaseCtrl
  @inject '$scope', 'Project', 'Technology'

  initialize: ->
    @Project.get().then (projects) =>
      @$scope.projects = projects

    @Technology.get().then (technologies) =>
      @$scope.technologies = technologies
