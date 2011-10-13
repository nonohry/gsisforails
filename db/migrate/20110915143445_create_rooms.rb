class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :kode
      t.string :nama
      t.integer :kapasitas

      t.timestamps
    end
  end
end
