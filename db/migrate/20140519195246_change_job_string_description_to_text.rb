class ChangeJobStringDescriptionToText < ActiveRecord::Migration
  def change
    change_column :jobs, :description, :text
  end
end
