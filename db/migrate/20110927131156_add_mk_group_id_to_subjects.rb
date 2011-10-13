class AddMkGroupIdToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :mk_group_id, :integer
    add_index :subjects, :mk_group_id
  end
end
