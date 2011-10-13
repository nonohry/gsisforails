class AddPasswordDigestToStudent < ActiveRecord::Migration
  def change
    add_column :students, :password_digest, :string
  end
end
