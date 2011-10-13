class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.references :course
      t.string :kode
      t.string :nama
      t.string :semester
      t.string :sks

      t.timestamps
    end
    add_index :subjects, :course_id
  end
end
