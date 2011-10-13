class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|
      t.references :college
      t.references :course
      t.string :tahun_ajaran
      t.string :semester
      t.date :tanggal_mulai
      t.date :tanggal_selesai

      t.timestamps
    end
    
    add_index :parameters, :college_id
    add_index :parameters, :course_id
  end
end
