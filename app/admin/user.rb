ActiveAdmin.register User do
  permit_params :email, :first_name, :last_name, :username

  form do |f|
    f.inputs 'Details' do
      input :email
      input :first_name
      input :last_name
      input :username
    end

    f.actions
  end

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :username
    column :sign_in_count
    column :created_at
    column :updated_at
    column :facebook_id

    actions
  end

  filter :id
  filter :email
  filter :username
  filter :first_name
  filter :last_name
  filter :sign_in_count
  filter :created_at
  filter :updated_at
  filter :facebook_id

  show do
    attributes_table do
      row :id
      row :email
      row :first_name
      row :last_name
      row :username
      row :sign_in_count
      row :created_at
      row :updated_at
      row :facebook_id
    end
    active_admin_comments
  end
end
