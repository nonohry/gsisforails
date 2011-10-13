class AddCourseIdToTeachings < ActiveRecord::Migration
  def change
    add_column :teachings, :course_id, :integer
    
    add_index :teachings, :course_id
  end
  
end
