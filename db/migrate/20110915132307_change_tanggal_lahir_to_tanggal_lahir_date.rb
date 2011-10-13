class ChangeTanggalLahirToTanggalLahirDate < ActiveRecord::Migration
  def up
    change_column :dosens, :tanggal_lahir, :date
  end

  def down
    change_column :dosens, :tanggal_lahir, :string
  end
end
