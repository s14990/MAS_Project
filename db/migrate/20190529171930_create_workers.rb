class CreateWorkers < ActiveRecord::Migration[5.2]
  def change
    create_table :workers do |t|
      t.string :name, null: false, unique: true
      t.integer :salary, null: false
      t.string :email
      t.integer :premija
      t.integer :bonus
      t.integer :pay
      t.date :hiredate
      t.integer :certificate_ids, array: true, default: []
      t.timestamps
    end
  end
end
