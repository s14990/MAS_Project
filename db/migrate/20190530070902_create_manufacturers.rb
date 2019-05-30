class CreateManufacturers < ActiveRecord::Migration[5.2]
  def change
    create_table :manufacturers do |t|
      t.string :name, null:false, unique: true
      t.boolean :has_licence, null: false, default: true
      t.timestamps
    end
  end
end
