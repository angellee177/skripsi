class AddAdminToMontirs < ActiveRecord::Migration[5.2]
  def change
    add_column :montirs, :admin, :boolean, default: false
  end
end
