class CreateUnits < ActiveRecord::Migration[7.1]
  def change
    create_table :units do |t|
      t.string :code, null:false
      t.string :name, null:false
      t.string :unit_type, null:false
      t.timestamps
    end
    add_index :units, :code, unique:true
    add_index :units, :name, unique:true

  end
end
