class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :title
      t.integer :operation
      t.integer :digits
      t.float :timer
      t.integer :total
      t.integer :sum

      t.timestamps
    end
  end
end
