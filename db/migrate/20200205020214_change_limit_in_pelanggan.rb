class ChangeLimitInPelanggan < ActiveRecord::Migration[5.2]
  def up
    change_column :pelanggans, :no_telp, :bigint, limit:15
  end

  def down
    change_column :pelanggans, :no_telp, :bigint
  end
end
