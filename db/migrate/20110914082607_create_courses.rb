class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.references :college
      t.string :jenjang
      t.string :kode
      t.string :nama
      t.string :no_sk
      t.string :akreditasi
      t.string :no_telp
      t.string :email
      t.string :faksmili

      t.timestamps
    end
  end
end
