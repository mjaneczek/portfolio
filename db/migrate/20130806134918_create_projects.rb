class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.text :description
      t.text :full_description

      t.timestamps
    end
  end
end
