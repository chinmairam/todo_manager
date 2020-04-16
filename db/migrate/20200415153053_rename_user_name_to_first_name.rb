class RenameUserNameToFirstName < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last_name, :string
    rename_column :users, :user_email, :email
    rename_column :users, :user_name, :first_name
  end
end
