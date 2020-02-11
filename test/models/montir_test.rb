require 'test_helper'

class MontirTest < ActiveSupport::TestCase
  def setup 
    @montir = Montir.new(name: "montir 1", username: "montir_username", email: "montir@yopmail.com", tanggal_lahir: "1997-04-27", password: "123456", password_confirmation:"123456")
  end

  test "montir should be valid" do
    assert @montir.valid?
  end

  test "name should be present" do
    @montir.name = " "
    assert_not @montir.valid?
  end

  test "username should be present" do
    @montir.username = " "
    assert_not @montir.valid?
  end

  test "email should be present" do
    @montir.email = " "
    assert_not @montir.valid?
  end

  test "email should accept correct format" do
    valid_emails = %w[user@example.com user@yopmail.com user@gmail.com]
    valid_emails.each do |valids|
      @montir.email = valids
      assert @montir.valid?, "#{valids.inspect} should be valid"
    end
  end

  test "email reject incorrect format" do
    invalid_emails = %w[user@example user@example,com user.name@yopmail. user@bar+foo.com]
    invalid_emails.each do |invalids|
      @montir.email = invalids
      assert_not @montir.valid?, "#{invalids.inspect} should be invalid"
    end
  end

  test "email should be lower case before save" do
    mixed_email = "AnGeLLEe@yoPmaIl.com"
    @montir.email = mixed_email
    @montir.save
    assert_equal mixed_email.downcase, @montir.reload.email
  end

end
