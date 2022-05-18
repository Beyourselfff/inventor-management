class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :model
      t.text :description

      t.timestamps
    end
  end
end
