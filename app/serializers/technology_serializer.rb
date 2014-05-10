class TechnologySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :full_description
end
