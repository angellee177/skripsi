class AddPelangganIdToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :pelanggan_id, :integer
  end
end
