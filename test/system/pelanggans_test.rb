require "application_system_test_case"

class PelanggansTest < ApplicationSystemTestCase
  setup do
    @pelanggan = pelanggans(:one)
  end

  test "visiting the index" do
    visit pelanggans_url
    assert_selector "h1", text: "Pelanggans"
  end

  test "creating a Pelanggan" do
    visit pelanggans_url
    click_on "New Pelanggan"

    fill_in "Alamat", with: @pelanggan.alamat
    fill_in "D kerusakan", with: @pelanggan.d_kerusakan
    fill_in "Id montir", with: @pelanggan.id_montir
    fill_in "Nama", with: @pelanggan.nama
    fill_in "Nik", with: @pelanggan.nik
    fill_in "No kendaraan", with: @pelanggan.no_kendaraan
    fill_in "No telp", with: @pelanggan.no_telp
    fill_in "Status", with: @pelanggan.status
    click_on "Create Pelanggan"

    assert_text "Pelanggan was successfully created"
    click_on "Back"
  end

  test "updating a Pelanggan" do
    visit pelanggans_url
    click_on "Edit", match: :first

    fill_in "Alamat", with: @pelanggan.alamat
    fill_in "D kerusakan", with: @pelanggan.d_kerusakan
    fill_in "Id montir", with: @pelanggan.id_montir
    fill_in "Nama", with: @pelanggan.nama
    fill_in "Nik", with: @pelanggan.nik
    fill_in "No kendaraan", with: @pelanggan.no_kendaraan
    fill_in "No telp", with: @pelanggan.no_telp
    fill_in "Status", with: @pelanggan.status
    click_on "Update Pelanggan"

    assert_text "Pelanggan was successfully updated"
    click_on "Back"
  end

  test "destroying a Pelanggan" do
    visit pelanggans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pelanggan was successfully destroyed"
  end
end
