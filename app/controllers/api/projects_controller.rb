class Api::ProjectsController < Api::BaseController
  def index
    render json: Project.all
  end

  def show
    render json: Project.find(params[:id]), serializer: ProjectDetailsSerializer
  end

  def recent
    render json: Project.last(5)
  end
end
