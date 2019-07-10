class CreateSalary < ActiveRecord::Migration[5.2]
  def change
    create_table :salaries do |t|
        t.decimal :potongan
        t.decimal :bonus
        t.decimal :total
  
        t.timestamps
    end
  end
end
