class CreatePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :practices do |t|

      t.belongs_to :branch, index: true
      t.belongs_to :worker, index: true
      t.date :start_date 
      t.date :finish_date
      t.string :notes
      t.timestamps
    end
  end
end
