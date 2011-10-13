class CreateDosens < ActiveRecord::Migration
  def change
    create_table :dosens do |t|
      t.string :nip
      t.string :nama
      t.string :gelar_depan
      t.string :gelar_belakang
      t.references :position
      t.references :status
      t.string :tanggal_lahir
      t.string :tempat_lahir
      t.references :religion
      t.references :gender
      t.text :alamat
      t.string :no_telp
      t.string :email

      t.timestamps
    end
    add_index :dosens, :position_id
    add_index :dosens, :status_id
    add_index :dosens, :religion_id
    add_index :dosens, :gender_id
  end
end
