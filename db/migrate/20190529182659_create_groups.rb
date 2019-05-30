class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :purpose, null: false
      t.string :side_effects, array: true, default: []
      t.timestamps
    end
  end
end
