class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.decimal :price
      t.belongs_to :montir, foreign_key: true

      t.timestamps
    end
  end
end
