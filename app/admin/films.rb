ActiveAdmin.register Film do
  menu priority: 1

  permit_params :title, :description, :director, :rating

  index do
    selectable_column
    id_column
    column :category
    column :title
    column :description
    column :director
    column :rating
    # column :created_at
    # column :updated_at
    actions
  end
end
