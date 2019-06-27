class Sale < ApplicationRecord
  belongs_to :montir
  belongs_to :pelanggan
  
  has_many :items
  accepts_nested_attributes_for :items, allow_destroy: true  
  
  def subtotals  
    self.items.map { |i| i.subtotal }  
   end  
   
   def total_all  
    subtotals.sum  
   end  
end
