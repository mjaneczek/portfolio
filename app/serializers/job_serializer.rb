class JobSerializer < ActiveModel::Serializer
  attributes :name, :start_day, :end_day, :position, :description, :company_logo_url

  def company_logo_url
    object.company_logo.url if object.company_logo.present?
  end
end
