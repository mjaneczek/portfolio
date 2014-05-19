class Project < ActiveRecord::Base
  default_scope { order(:created_at) }

  has_and_belongs_to_many :technologies
  has_many :screenshots

  validates :name, presence: true
end
