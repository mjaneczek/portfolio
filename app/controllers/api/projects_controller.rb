class Api::ProjectsController < Api::BaseController
  def index
    render json: Project.all
  end

  def recent
    render json: Project.last(5)
  end
end
