class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.date :transaction_date, null:false
      t.integer :transaction_type, null:false, default:0
      t.integer :status, null:false, default:0
      t.references :stock, null: false, foreign_key:{to_table: :stocks},
        index:{name:"stock_on_transaction_index"}
      t.float :quantity, null:false
      t.timestamps
    end
  end
end
