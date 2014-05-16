class RemoveCssClassFromTechnologies < ActiveRecord::Migration
  def change
    remove_column :technologies, :css_class
  end
end
