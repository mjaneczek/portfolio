class TemplatesController < ApplicationController
  def show
    template = params[:id] || :application
    render "templates/#{template}", layout: false
  end
end
