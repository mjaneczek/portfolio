class Api::JobsController < Api::BaseController
  def index
    render json: Job.all.order('start_day DESC')
  end
end
