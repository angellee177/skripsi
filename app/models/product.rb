class Product < ApplicationRecord
  before_create :set_code

  belongs_to :montir
  
  has_many :items, dependent: :destroy

  # validation product name
  validates :name, presence: {messages:"Products Name can't be Blank!"},
  length: {maximum: 30, messages:"Product name Max. is 30 Character!"},
  uniqueness: { case_sensitive: true }

  # Validation price name
  validates :price, presence: { messages: "Price can't be Blank!"}

  def generate_code(size = 6)
    charset = %w{ 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z}
    (0...size).map{ charset.to_a[rand(charset.size)] }.join
  end

  def set_code
    self.code = generate_code(6)
  end
end
