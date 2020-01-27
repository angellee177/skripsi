class AddCommisiontoSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :commission, :decimal, default: 0.0
  end
end
