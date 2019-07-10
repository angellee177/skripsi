class AlterMontirSalaries < ActiveRecord::Migration[5.2]
  def up
    rename_column :montir_salaries, :salaries_id, :salary_id
  end

  def down
    rename_column :montir_salaries, :salary_id, :salaries_id
  end
end
