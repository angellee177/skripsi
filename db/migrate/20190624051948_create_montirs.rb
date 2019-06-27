class CreateMontirs < ActiveRecord::Migration[5.2]
  def change
    create_table :montirs do |t|
      t.string :name
      t.string :username
      t.date :tanggal_lahir
      t.string :picture

      t.timestamps
    end
  end
end
