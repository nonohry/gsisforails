class CreateTeachings < ActiveRecord::Migration
  def change
    create_table :teachings do |t|
      t.references :dosen
      t.references :subject
      t.references :group
      t.string :tahun_akademik

      t.timestamps
    end
    add_index :teachings, :dosen_id
    add_index :teachings, :subject_id
    add_index :teachings, :group_id
  end
end
