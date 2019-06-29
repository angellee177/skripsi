class Item < ApplicationRecord
  belongs_to :product
  belongs_to :sale

  before_save :set_total  

     def set_total  
          if self.quantity.blank?  
          0  
          else  
               self.total = self.subtotal - self.sale.diskon
          end  
     end  

     # Menghitung Subtotal
     def subtotal  
          if self.quantity.blank?  
          0  
          else  
               self.quantity * self.product.price  
          end  
     end  


end
