class CreateBatches < ActiveRecord::Migration[5.2]
  def change
    create_table :batches do |t|

      t.date :due_date
      t.integer :number
      t.belongs_to :order, null: false, foreign_key: true, index: { unique: true }
      t.belongs_to :wholesale_purchase, null: false, foreign_key: true, index: { unique: true }
      t.belongs_to :medication
      t.timestamps
    end

  end
end
