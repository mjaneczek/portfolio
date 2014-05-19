class AddColorToTechnologies < ActiveRecord::Migration
  def change
    add_column :technologies, :color, :string
  end
end
