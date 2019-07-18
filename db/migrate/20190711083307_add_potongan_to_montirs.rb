class AddPotonganToMontirs < ActiveRecord::Migration[5.2]
  def change
    add_column :montirs, :potongan, :decimal
    add_column :montirs, :bonus, :decimal
  end
end
