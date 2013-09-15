class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|
      t.string :image, null: false
      t.text :description
      t.integer :project_id

      t.timestamps
    end
  end
end
