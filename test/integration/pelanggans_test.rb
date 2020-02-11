require 'test_helper'

class PelanggansTest < ActionDispatch::IntegrationTest
  def setup 
    @montir = Montir.create(name: "montir 1", username: "montir_username", email: "montir@yopmail.com", tanggal_lahir: "1997-04-27", password: "123456", password_confirmation:"123456")
    @pelanggan = Pelanggan.create(nama: "pelanggan 1", alamat: "jl. imperium", no_telp: "12345678", montir_id: @montir.id)
  end

  test "should get pelanggan index" do
    get pelanggans_url
    assert_response :success
  end

  test "should get pelanggan listing" do
    get pelanggans_path
    assert_template 'pelanggans/index'
  end
end
