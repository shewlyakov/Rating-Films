ActiveAdmin.register Category do
  menu priority: 2

  permit_params :title, :image

  index do
    selectable_column
    id_column
    column :title
    # column :created_at
    # column :updated_at
    actions
  end

  show do
    attributes_table do
      row :title
      row :image do
        image_tag category.image, class: 'product-image'
      end
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs do
      f.input :title, as: :string
      f.input :image, as: :file
    end
    f.actions
  end
end
