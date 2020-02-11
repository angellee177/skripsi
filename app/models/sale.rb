class Sale < ApplicationRecord
  belongs_to :montir
  belongs_to :pelanggan
  before_save :commision

  
  has_many :items

  accepts_nested_attributes_for :items, allow_destroy: true  
  
  def subtotals  
    self.items.map { |i| i.subtotal }  
  end  
   
  def total_all  
    subtotals.sum - diskon
  end  
  
  def commision
    total_all * 0.15
  end
end
