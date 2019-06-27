class AddNomorKendaraanToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :no_kendaraan, :string
  end
end
