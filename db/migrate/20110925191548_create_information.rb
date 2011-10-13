class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :judul
      t.text :berita
      t.string :status

      t.timestamps
    end
  end
end
