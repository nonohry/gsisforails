class CreateFoundations < ActiveRecord::Migration
  def change
    create_table :foundations do |t|
      t.string :kode
      t.string :nama
      t.string :ketua
      t.string :no_sk
      t.text :alamat_1
      t.text :alamat_2
      t.string :kota
      t.string :kodepos
      t.string :no_telp
      t.string :website
      t.string :email
      t.string :faksmili

      t.timestamps
    end
  end
end
