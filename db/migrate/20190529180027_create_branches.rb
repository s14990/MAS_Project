class CreateBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :branches do |t|
      t.string :address,null: false
      t.string :kind,null: false
      t.timestamps
    end
  end
end
