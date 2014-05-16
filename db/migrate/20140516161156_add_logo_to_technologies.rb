class AddLogoToTechnologies < ActiveRecord::Migration
  def change
    add_attachment :technologies, :logo
  end
end
