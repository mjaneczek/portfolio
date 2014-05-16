class Technology < ActiveRecord::Base
  has_and_belongs_to_many :projects
  validates :name, presence: true

  has_attached_file :logo
  validates_attachment_content_type :logo, content_type: %w(image/jpg image/jpeg image/png image/gif)
end
