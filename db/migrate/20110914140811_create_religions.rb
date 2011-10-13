class CreateReligions < ActiveRecord::Migration
  def change
    create_table :religions do |t|
      t.string :nama

      t.timestamps
    end
  end
end
