class Montir < ApplicationRecord
    before_save { self.email = email.downcase }
    # Association with Pelanggan Table
    has_many :pelanggans, dependent: :destroy

    has_many :sales, dependent: :destroy
    # For Validation these column can't be Blank
    validates :name, presence: {messages:"Montir Name can't be Blank!"},
    length: {maximum: 30, messages:"Montir name Max. is 30 Character!"}
    # Validates For Username
    validates :username, presence: {messages:"You must enter Montir Username!"},
    uniqueness: { case_sensitive: false }
    # Validates For Password
    validates :password, presence: true, 
    length: { minimum: 5, messages: " Password Minimum 5 Character!"},
    allow_nil: true
    # Validation For Email
     validates :email, presence: {messages:'Email cannot be blank!'},
     format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i},
     uniqueness: { case_sensitive: false }

    # Set Secure Password
    has_secure_password

    # Upload Picture with Active storage
    has_one_attached :picture
end
