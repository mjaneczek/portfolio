class DetailsController < ApplicationController
  def index
    render :nothing => :true, :status => :no_content
  end
end
