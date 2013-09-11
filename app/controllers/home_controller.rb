class HomeController < ApplicationController
  include HomeHelper
  
	def index
    Project.order("created_at DESC").take(5).each do |project|
      left_menu.register_item(project.name, project_path(project))
    end

    @last_project = Project.last
	end

  def about
  end
end
