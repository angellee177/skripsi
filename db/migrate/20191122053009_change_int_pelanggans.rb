class ChangeIntPelanggans < ActiveRecord::Migration[5.2]
  def up
    change_column :pelanggans, :no_telp, :bigint
  end

  def down
    change_column :pelanggans, :no_telp, :int
  end
end
