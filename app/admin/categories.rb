ActiveAdmin.register Category do
  menu priority: 2

  permit_params :title

  index do
    selectable_column
    id_column
    column :title
    # column :created_at
    # column :updated_at
    actions
  end
end
