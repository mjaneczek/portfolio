class AddImportantToTechnologies < ActiveRecord::Migration
  def change
    add_column :technologies, :important, :boolean, default: false
  end
end
