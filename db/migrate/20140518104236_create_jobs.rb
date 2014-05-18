class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.date :start_day
      t.date :end_day
      t.string :position
      t.string :description
    end

    add_attachment :jobs, :company_logo
  end
end
