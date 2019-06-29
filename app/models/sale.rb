class Sale < ApplicationRecord
  belongs_to :montir
  belongs_to :pelanggan
  
  has_many :items
  accepts_nested_attributes_for :items, allow_destroy: true  
  
  def subtotals  
    self.items.map { |i| i.subtotal }  
  end  
   
  def total_all  
    subtotals.sum - diskon  
  end  

  def receipt
    Receipts::Receipt.new(
      id: id,
      subheading: "RECEIPT FOR CHARGE #{id}",
      company: {
      name: "Bengkel Mobil Jaya.",
      address: "Jl.Makam Pahlawan, Km.5 Bawah.",
      },
      line_items: [
        ["Date",           created_at.to_s],
        ["Account Billed", "#{pelanggan.nama} (#{pelanggan.code})"],
        ["Subtotal",         "IDR#{subtotals}.00"],
        ["Diskon",         "IDR#{diskon}.00"],
        ["Total",         "IDR#{total_all}.00"],
      ],
      font: {
        bold: Rails.root.join('app/assets/fonts/tradegothic/TradeGothic-Bold.ttf'),
        normal: Rails.root.join('app/assets/fonts/tradegothic/TradeGothic.ttf'),
      }
    )
  end
end
