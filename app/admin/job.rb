ActiveAdmin.register Job do
  permit_params :name, :start_day, :end_day, :company_logo, :description, :position

  form do |f|
    f.inputs do
      f.input :name
      f.input :start_day
      f.input :end_day
      f.input :position
      f.input :description
      f.input :company_logo
    end

    f.actions
  end
end
