class Pelanggan < ApplicationRecord
    # Association with Montir Table
    belongs_to :montir

    # Association with Sales Table
    has_many :Pelanggans
    # For Validation these column can't be Blank
    validates :nik, presence:  true
    validates :nama, presence: {messages: "Pelanggan name can't be blank!"},
    length: {maximum:30, messages:"Name Max. Length is 30 character!"}
    validates :alamat, presence: true
    validates :no_telp, presence: true
    validates :no_kendaraan, presence:true
    validates :montir_id, presence:true
    
end
