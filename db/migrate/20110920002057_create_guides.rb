class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.references :dosen

      t.timestamps
    end
    add_index :guides, :dosen_id
  end
end
