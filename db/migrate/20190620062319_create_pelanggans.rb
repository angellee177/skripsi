class CreatePelanggans < ActiveRecord::Migration[5.2]
  def change
    create_table :pelanggans do |t|
      t.integer :nik
      t.string :nama
      t.text :alamat
      t.integer :no_telp
      t.string :no_kendaraan
      t.text :d_kerusakan
      t.integer :id_montir
      t.string :status

      t.timestamps
    end
  end
end
