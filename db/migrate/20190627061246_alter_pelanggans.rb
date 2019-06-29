class AlterPelanggans < ActiveRecord::Migration[5.2]
  def change
    rename_column :pelanggans, :nik, :code
  end
end
