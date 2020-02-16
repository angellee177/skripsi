class Sale < ApplicationRecord
  belongs_to :montir
  belongs_to :pelanggan
  before_save :commision

  
  has_many :items, dependent: :destroy

  accepts_nested_attributes_for :items, allow_destroy: true  
  
  def subtotals  
    self.items.map { |i| i.subtotal }  
  end  
   
  def diskonan
    if diskon.blank?  
      0
    else
      diskon
    end
  end  

  def total_all  
    subtotals.sum - diskonan
  end  
  
  def commision
    total_all * 0.15
  end

  def commision_total
    commision.sum 
  end


end
