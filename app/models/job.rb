class Job < ActiveRecord::Base
  has_attached_file :company_logo
  validates_attachment_content_type :company_logo, content_type: %w(image/jpg image/jpeg image/png image/gif)
end
