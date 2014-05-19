ActiveAdmin.register Technology do
  permit_params :name, :description, :full_description, :logo, :important, :color, project_ids: []

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :full_description
      f.input :projects, as: :check_boxes
      f.input :logo
      f.input :important
      f.input :color
    end

    f.actions
  end
end
