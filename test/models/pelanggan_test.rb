require 'test_helper'

class PelangganTest < ActiveSupport::TestCase
  def setup 
    @montir = Montir.new(name: "montir 1", username: "montir_username", email: "montir@yopmail.com", tanggal_lahir: "1997-04-27", password: "123456", password_confirmation:"123456")
    @pelanggan = @montir.pelanggans.new(nama: "pelanggan 1", alamat: "jl. imperium", no_telp: "12345678", montir_id: @montir.id)
  end

  test "pelanggan without montir should be invalid" do
    @pelanggan.montir_id = nil
    assert_not @pelanggan.valid?
  end

  test "Pelanggan should be valid" do
    assert_not @pelanggan.valid?
  end

  test "name should be present" do
    @pelanggan.nama = " "
    assert_not @pelanggan.valid?
  end

  test "alamat should be present" do
    @pelanggan.alamat= " "
    assert_not @pelanggan.valid?
  end

  test "nomor telepeon should be present" do
    @pelanggan.no_telp = "1234"
    assert_not @pelanggan.valid?
  end
end
