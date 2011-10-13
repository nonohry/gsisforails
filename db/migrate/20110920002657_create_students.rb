class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :nim
      t.string :nama_depan
      t.string :nama_belakang
      t.string :tempat_lahir
      t.date :tanggal_lahir
      t.references :religion
      t.references :gender
      t.string :tahun_masuk
      t.references :college
      t.references :course
      t.references :guide
      t.string :ayah_nama
      t.string :ayah_pekerjaan
      t.string :ayah_golongan
      t.string :ibu_nama
      t.string :ibu_pekerjaan
      t.string :ibu_golongan
      t.text :alamat
      t.string :kota
      t.string :tahun_lulus
      t.string :lulusan
      t.string :no_ijazah
      t.text :alamat_sekolah
      t.string :nem

      t.timestamps
    end
    add_index :students, :religion_id
    add_index :students, :gender_id
    add_index :students, :college_id
    add_index :students, :course_id
    add_index :students, :guide_id
  end
end
