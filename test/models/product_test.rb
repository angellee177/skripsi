require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def setup
    @montir = Montir.new(name: "montir 1", username: "montir_username", email: "montir@yopmail.com", tanggal_lahir: "1997-04-27", password: "123456", password_confirmation:"123456")
    @product = Product.new(name:"ganti aki", price: "170000", montir_id: @montir.id)
  end

  test "pelanggan without montir should be invalid" do
    @product.montir_id = nil
    assert_not @product.valid?
  end

  test "Product should be valid" do
    assert_not @product.valid?
  end

  test "name should be present" do
    @product.name = " "
    assert_not @product.valid?
  end

  test "price should be present" do
    @product.price= " "
    assert_not @product.valid?
  end
end
