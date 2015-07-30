class AddUrlToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :url, :text
  end
end
