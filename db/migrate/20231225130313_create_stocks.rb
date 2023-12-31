class CreateStocks < ActiveRecord::Migration[7.1]
  def change
    create_table :stocks do |t|
      t.references :product, null: false, foreign_key: true
      t.references :unit, null: false, foreign_key: true
      t.references :store, null: false, foreign_key: true
      t.float :quantity, null:false, default:0

      t.timestamps
    end
  end
end
