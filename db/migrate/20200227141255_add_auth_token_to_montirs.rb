class AddAuthTokenToMontirs < ActiveRecord::Migration[5.2]
  def change
    add_column :montirs, :auth_token, :string
  end
end
