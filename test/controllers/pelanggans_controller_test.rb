require 'test_helper'

class PelanggansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pelanggan = pelanggans(:one)
  end

  test "should get index" do
    get pelanggans_url
    assert_response :success
  end

  test "should get new" do
    get new_pelanggan_url
    assert_response :success
  end

  test "should create pelanggan" do
    assert_difference('Pelanggan.count') do
      post pelanggans_url, params: { pelanggan: { alamat: @pelanggan.alamat, d_kerusakan: @pelanggan.d_kerusakan, id_montir: @pelanggan.id_montir, nama: @pelanggan.nama, nik: @pelanggan.nik, no_kendaraan: @pelanggan.no_kendaraan, no_telp: @pelanggan.no_telp, status: @pelanggan.status } }
    end

    assert_redirected_to pelanggan_url(Pelanggan.last)
  end

  test "should show pelanggan" do
    get pelanggan_url(@pelanggan)
    assert_response :success
  end

  test "should get edit" do
    get edit_pelanggan_url(@pelanggan)
    assert_response :success
  end

  test "should update pelanggan" do
    patch pelanggan_url(@pelanggan), params: { pelanggan: { alamat: @pelanggan.alamat, d_kerusakan: @pelanggan.d_kerusakan, id_montir: @pelanggan.id_montir, nama: @pelanggan.nama, nik: @pelanggan.nik, no_kendaraan: @pelanggan.no_kendaraan, no_telp: @pelanggan.no_telp, status: @pelanggan.status } }
    assert_redirected_to pelanggan_url(@pelanggan)
  end

  test "should destroy pelanggan" do
    assert_difference('Pelanggan.count', -1) do
      delete pelanggan_url(@pelanggan)
    end

    assert_redirected_to pelanggans_url
  end
end
