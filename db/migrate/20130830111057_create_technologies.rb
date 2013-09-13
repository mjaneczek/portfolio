class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.string :name, null: false
      t.text :description
      t.string :css_class
      t.text :full_description
      
      t.timestamps
    end
  end
end
