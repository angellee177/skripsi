class CreateMontirSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :montir_salaries do |t|
      t.integer :montir_id
      t.integer :salary_id
    end
  end
end
