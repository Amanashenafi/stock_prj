class CreateStores < ActiveRecord::Migration[7.1]
  def change
    create_table :stores do |t|
      t.string :code, null:false
      t.string :name, null:false
      t.string :address
      t.timestamps
    end
    add_index :stores, :code, unique:true
    add_index :stores, :name, unique:true
    add_index :stores, :address, unique:true
  end
end
