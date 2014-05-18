class ProjectCtrl extends BaseCtrl
  @inject '$scope', 'Project', '$stateParams'

  initialize: ->
    @Project.get(id: @$stateParams.id).then (project) =>
      @$scope.project = project
