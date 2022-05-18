class CreateWarehouses < ActiveRecord::Migration[6.1]
  def change
    create_table :warehouses do |t|
      t.integer :number

      t.timestamps
    end
  end
end
