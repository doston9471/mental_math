class AddExtraFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :teacher, :boolean, default: false
    add_column :users, :student, :boolean, default: true
  end
end
