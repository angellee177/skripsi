class AlterPelanggansColumn < ActiveRecord::Migration[5.2]
  def up
    rename_column :pelanggans, :id_montir, :montir_id 
  end

  def down
    rename_column :pelanggans, :montir_id, :id_montir
  end
end
