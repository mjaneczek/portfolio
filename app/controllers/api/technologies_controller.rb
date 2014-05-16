class Api::TechnologiesController < Api::BaseController
  def index
    render json: Technology.all
  end

  def show
    render json: Technology.find(params[:id]), serializer: TechnologyDetailsSerializer
  end

  def important
    render json: Technology.where(important: true)
  end
end
