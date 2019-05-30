class CreateCertificates < ActiveRecord::Migration[5.2]
  def change
    create_table :certificates do |t|
      t.string :short_name, null: false
      t.string :full_name, null: false 
      t.timestamps
    end
  end
end
