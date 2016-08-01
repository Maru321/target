class DeviseAddUsersGender < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
  end
end
