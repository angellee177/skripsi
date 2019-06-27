class AddPasswordDigestToMontirs < ActiveRecord::Migration[5.2]
  def change
    add_column :montirs, :password_digest, :string
  end
end
