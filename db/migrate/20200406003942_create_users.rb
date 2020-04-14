class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :user_name
      t.text :user_email
      t.text :user_password
      t.timestamps
      # updated_at
      # created_at
    end
  end
end
