class AddSaleIdToSalary < ActiveRecord::Migration[5.2]
  def change
    add_column :salaries, :sale_id, :integer
  end
end
