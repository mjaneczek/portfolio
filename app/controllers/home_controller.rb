class HomeController < ApplicationController
	def index
    Project.take(5).each do |project|
      left_menu.register_item(project.name, project_path(project))
    end

    @last_project = Project.last
	end
end
