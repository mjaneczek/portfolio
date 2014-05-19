class Api::ProjectsController < Api::BaseController
  def index
    projects = Project.all.includes(:technologies)
    projects = projects.where(technologies: { id: params[:technology_id] }) if params[:technology_id].present?
    render json: projects
  end

  def show
    render json: Project.find(params[:id]), serializer: ProjectDetailsSerializer
  end

  def recent
    render json: Project.last(3)
  end
end
