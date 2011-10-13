class AddActiveIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :active_id, :integer, :default => 1
    
    add_index :students, :active_id
  end
  
end
