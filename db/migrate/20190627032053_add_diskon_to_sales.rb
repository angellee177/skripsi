class AddDiskonToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :diskon, :numeric
  end
end
