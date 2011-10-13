class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :nama

      t.timestamps
    end
  end
end
