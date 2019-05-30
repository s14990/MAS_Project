class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :order_date
      t.date :receive_date
      t.string :state, null: false
      t.integer :value
      t.belongs_to :branch, index: true
      t.timestamps
    end
  end
end
