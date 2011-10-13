class CreateRecaps < ActiveRecord::Migration
  def change
    create_table :recaps do |t|
      t.references :student
      t.references :subject
      t.string :smtMhs
      t.string :tahun_akademik
      t.string :semester
      t.references :score
      t.references :dosen

      t.timestamps
    end
    add_index :recaps, :student_id
    add_index :recaps, :subject_id
    add_index :recaps, :score_id
    add_index :recaps, :dosen_id
  end
end
