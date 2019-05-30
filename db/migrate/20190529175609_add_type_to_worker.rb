class AddTypeToWorker < ActiveRecord::Migration[5.2]
  def change
    add_column :workers, :type, :string, null: false, default: 'Asystent'
  end
end
