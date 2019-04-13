class CreateNumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :numbers do |t|
      t.integer :amount
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
