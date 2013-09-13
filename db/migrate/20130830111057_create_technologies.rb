class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.string :name, null: false
      t.string :css_class

      t.timestamps
    end
  end
end
