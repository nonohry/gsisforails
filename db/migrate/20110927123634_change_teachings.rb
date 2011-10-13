class ChangeTeachings < ActiveRecord::Migration
  def up
    remove_column :teachings, :tahun_akademik
    add_column :teachings, :sks, :integer
  end

  def down
    remove_column :teachings, :sks
    add_column :teachings, :tahun_akademik, :string
  end
end
