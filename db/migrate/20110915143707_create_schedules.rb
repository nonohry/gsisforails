class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :hari
      t.string :jam
      t.references :room
      t.references :teaching

      t.timestamps
    end
    add_index :schedules, :room_id
    add_index :schedules, :teaching_id 
  end
end
