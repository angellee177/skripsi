require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  def setup
    @montir = Montir.new(name: "montir 1", username: "montir_username", email: "montir@yopmail.com", tanggal_lahir: "1997-04-27", password: "123456", password_confirmation:"123456")
    @pelanggan = @montir.pelanggans.new(nama: "pelanggan 1", alamat: "jl. imperium", no_telp: "12345678", montir_id: @montir.id)
    @sale = @montir.sales.new(name: "perbaikan mesin", pelanggan_id: @pelanggan.id, no_kendaraan: "Bp 8900 UT", montir_id: @montir.id, diskon: "0")
  end

  test "sale without montir  and pelanggan should be invalid" do
    @sale.montir_id = nil,
    @sale.pelanggan_id = nil
    assert_not @sale.valid?
  end
end
