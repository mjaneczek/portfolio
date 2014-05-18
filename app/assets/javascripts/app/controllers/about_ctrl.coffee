class AboutCtrl extends BaseCtrl
  @inject '$scope', 'Job'

  initialize: ->
    @Job.get().then (jobs) =>
      @$scope.jobs = jobs

    @Job.summary().then (summary) =>
      @$scope.summary = summary
