class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :shelter_name

      t.timestamps null: false
    end
  end
end
