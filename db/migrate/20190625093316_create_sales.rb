class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :name
      t.decimal :total
      t.belongs_to :montir, foreign_key: true

      t.timestamps
    end
  end
end
