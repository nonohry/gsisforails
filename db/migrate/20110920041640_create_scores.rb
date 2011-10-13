class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :kode
      t.string :nama
      t.string :deskripsi

      t.timestamps
    end
  end
end
