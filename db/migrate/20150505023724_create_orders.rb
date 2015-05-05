class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :quantity
      t.integer :cost
      t.date :edt

      t.timestamps null: false
    end
  end
end
