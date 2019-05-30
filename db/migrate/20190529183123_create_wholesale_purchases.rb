class CreateWholesalePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :wholesale_purchases do |t|
      t.date :purchase_date
      t.integer :sum, null: false
      t.belongs_to :wholesaler
      t.timestamps
    end
  end
end
