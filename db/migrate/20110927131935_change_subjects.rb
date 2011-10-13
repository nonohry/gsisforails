class ChangeSubjects < ActiveRecord::Migration
  def up
    remove_column :subjects, :sks
    remove_column :subjects, :semester
  end

  def down
    add_column :subjects, :semester, :string 
    add_column :subjects, :sks, :string
  end
end
