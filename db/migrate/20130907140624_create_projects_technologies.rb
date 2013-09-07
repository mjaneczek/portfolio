class CreateProjectsTechnologies < ActiveRecord::Migration
  def change
    create_table :projects_technologies do |t|
      t.references :project, index: true, null: false
      t.references :technology, index: true, null: false

      t.timestamps
    end
  end
end
