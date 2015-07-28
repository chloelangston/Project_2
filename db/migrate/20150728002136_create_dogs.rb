class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :size
      t.integer :age
      t.string :left_alone
      t.string :housetrained
      t.string :needs_another_dog
      t.string :kids
      t.string :activity
      t.string :yard

      t.timestamps null: false
    end
  end
end
