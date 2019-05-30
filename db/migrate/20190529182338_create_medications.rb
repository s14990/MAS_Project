class CreateMedications < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|

      t.string :name, unique: true, null: false
      t.integer :price, null: false
      t.integer :total
      t.belongs_to :group
      t.belongs_to :manufacturer
      t.boolean :eligible_for_sale, null: false, default: true
      
      t.timestamps
    end
  end
end
