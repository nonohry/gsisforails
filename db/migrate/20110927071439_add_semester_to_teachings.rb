class AddSemesterToTeachings < ActiveRecord::Migration
  def change
    add_column :teachings, :semester, :string
  end
end
