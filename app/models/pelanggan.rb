class Pelanggan < ApplicationRecord
    # Association with Montir Table
    belongs_to :montir

    # Sebelum Save akan di generate code Unique untuk id Pelanggan
    before_create :set_code

    # Association with Sales Table
    has_many :Pelanggans
    # For Validation these column can't be Blank
    validates :nama, presence: {messages: "Pelanggan name can't be blank!"},
    length: {maximum:30, messages:"Name Max. Length is 30 character!"}
    validates :alamat, presence: true
    validates :no_telp, presence: true
    validates :montir_id, presence:true

    def generate_code(size = 6)
        charset = %w{1 2 3 4 5 6 7 8 9 0 }
        (0...size).map{ charset.to_a[rand(charset.size)] }.join
      end
    
      def set_code
        self.code = generate_code(6)
      end
    
end
