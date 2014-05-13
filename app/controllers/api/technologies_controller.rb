class Api::TechnologiesController < Api::BaseController
  def index
    render json: Technology.all
  end
end
