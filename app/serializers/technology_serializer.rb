class TechnologySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :logo_url

  def logo_url
    object.logo.url
  end
end
