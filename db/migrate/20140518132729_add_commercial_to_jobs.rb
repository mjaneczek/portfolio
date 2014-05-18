class AddCommercialToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :commercial, :boolean, default: true, null: false
  end
end
