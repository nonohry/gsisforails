class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.references :foundation
      t.string :kode
      t.string :nama
      t.string :no_sk_dikti
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
    add_index :colleges, :foundation_id
  end
end
