class Api::ProjectsController < Api::BaseController
  def index
    render json: Project.all
  end
end
