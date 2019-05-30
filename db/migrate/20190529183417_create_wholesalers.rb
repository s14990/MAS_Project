class CreateWholesalers < ActiveRecord::Migration[5.2]
  def change
    create_table :wholesalers do |t|
      t.string :name, unique: true, null: false
      t.integer :discount, null: false
      t.timestamps
    end
  end
end
