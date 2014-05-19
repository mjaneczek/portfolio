class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :technology_ids

  has_many :technologies
end
