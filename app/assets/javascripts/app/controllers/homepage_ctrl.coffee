class HomepageCtrl extends BaseCtrl
  @inject '$scope', 'Project'

  initialize: ->
    @Project.get().then (projects) =>
      @$scope.projects = projects
