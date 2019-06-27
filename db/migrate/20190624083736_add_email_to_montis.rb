class AddEmailToMontis < ActiveRecord::Migration[5.2]
  def change
    add_column :montirs, :email, :string
  end
end
