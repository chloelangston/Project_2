class AddBlurbToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :blurb, :text
  end
end
