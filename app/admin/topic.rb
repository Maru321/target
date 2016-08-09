ActiveAdmin.register Topic do
  permit_params :name

  form do |f|
    f.inputs 'New Topic' do
      input :name
    end

    f.actions
  end

  index do
    selectable_column
    id_column
    column :name

    actions
  end

  filter :id
  filter :name

  show do
    attributes_table do
      row :id
      row :name
    end
  end
end
