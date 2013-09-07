class ProjectsTechnology < ActiveRecord::Base
  belongs_to :project
  belongs_to :technology

  validates :project_id, :technology_id , numericality: true, allow_nil: false
end
