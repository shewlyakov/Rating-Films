ActiveAdmin.register Film do
  menu priority: 1

  permit_params :title, :description, :director, :rating, :category_id, :image

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

  show do
    attributes_table do
      row :category
      row :title
      row :description
      row :director
      row :rating
      row :image do
        image_tag film.image, class: 'product-image'
      end
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs do
      f.input :category
      f.input :title, as: :string
      f.input :description, as: :text
      f.input :director
      f.input :image, as: :file
    end
    f.actions
  end
end
