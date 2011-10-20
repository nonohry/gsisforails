# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110928144405) do

  create_table "actives", :force => true do |t|
    t.string   "nama"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "card_plans", :force => true do |t|
    t.integer  "student_id"
    t.integer  "teaching_id"
    t.string   "smtMhs"
    t.string   "tahun_akademik"
    t.string   "semester"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "result"
  end

  add_index "card_plans", ["student_id"], :name => "index_card_plans_on_student_id"
  add_index "card_plans", ["teaching_id"], :name => "index_card_plans_on_teaching_id"

  create_table "colleges", :force => true do |t|
    t.integer  "foundation_id"
    t.string   "kode"
    t.string   "nama"
    t.string   "no_sk_dikti"
    t.text     "alamat_1"
    t.text     "alamat_2"
    t.string   "kota"
    t.string   "kodepos"
    t.string   "no_telp"
    t.string   "website"
    t.string   "email"
    t.string   "faksmili"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "colleges", ["foundation_id"], :name => "index_colleges_on_foundation_id"

  create_table "courses", :force => true do |t|
    t.integer  "college_id"
    t.string   "jenjang"
    t.string   "kode"
    t.string   "nama"
    t.string   "no_sk"
    t.string   "akreditasi"
    t.string   "no_telp"
    t.string   "email"
    t.string   "faksmili"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dosens", :force => true do |t|
    t.string   "nip"
    t.string   "nama"
    t.string   "gelar_depan"
    t.string   "gelar_belakang"
    t.integer  "position_id"
    t.integer  "status_id"
    t.date     "tanggal_lahir",  :limit => 255
    t.string   "tempat_lahir"
    t.integer  "religion_id"
    t.integer  "gender_id"
    t.text     "alamat"
    t.string   "no_telp"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dosens", ["gender_id"], :name => "index_dosens_on_gender_id"
  add_index "dosens", ["position_id"], :name => "index_dosens_on_position_id"
  add_index "dosens", ["religion_id"], :name => "index_dosens_on_religion_id"
  add_index "dosens", ["status_id"], :name => "index_dosens_on_status_id"

  create_table "foundations", :force => true do |t|
    t.string   "kode"
    t.string   "nama"
    t.string   "ketua"
    t.string   "no_sk"
    t.text     "alamat_1"
    t.text     "alamat_2"
    t.string   "kota"
    t.string   "kodepos"
    t.string   "no_telp"
    t.string   "website"
    t.string   "email"
    t.string   "faksmili"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genders", :force => true do |t|
    t.string   "nama"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "nama"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guides", :force => true do |t|
    t.integer  "dosen_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "guides", ["dosen_id"], :name => "index_guides_on_dosen_id"

  create_table "information", :force => true do |t|
    t.string   "judul"
    t.text     "berita"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mk_groups", :force => true do |t|
    t.string   "kode"
    t.string   "nama"
    t.text     "keterangan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parameters", :force => true do |t|
    t.integer  "college_id"
    t.integer  "course_id"
    t.string   "tahun_ajaran"
    t.string   "semester"
    t.date     "tanggal_mulai"
    t.date     "tanggal_selesai"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parameters", ["college_id"], :name => "index_parameters_on_college_id"
  add_index "parameters", ["course_id"], :name => "index_parameters_on_course_id"

  create_table "positions", :force => true do |t|
    t.string   "nama"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recaps", :force => true do |t|
    t.integer  "student_id"
    t.integer  "subject_id"
    t.string   "smtMhs"
    t.string   "tahun_akademik"
    t.string   "semester"
    t.integer  "score_id"
    t.integer  "dosen_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recaps", ["dosen_id"], :name => "index_recaps_on_dosen_id"
  add_index "recaps", ["score_id"], :name => "index_recaps_on_score_id"
  add_index "recaps", ["student_id"], :name => "index_recaps_on_student_id"
  add_index "recaps", ["subject_id"], :name => "index_recaps_on_subject_id"

  create_table "religions", :force => true do |t|
    t.string   "nama"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", :force => true do |t|
    t.string   "kode"
    t.string   "nama"
    t.integer  "kapasitas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", :force => true do |t|
    t.string   "hari"
    t.string   "jam"
    t.integer  "room_id"
    t.integer  "teaching_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedules", ["room_id"], :name => "index_schedules_on_room_id"
  add_index "schedules", ["teaching_id"], :name => "index_schedules_on_teaching_id"

  create_table "scores", :force => true do |t|
    t.integer  "kode"
    t.string   "nama"
    t.string   "deskripsi"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "nama"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "nim"
    t.string   "nama_depan"
    t.string   "nama_belakang"
    t.string   "tempat_lahir"
    t.date     "tanggal_lahir"
    t.integer  "religion_id"
    t.integer  "gender_id"
    t.string   "tahun_masuk"
    t.integer  "college_id"
    t.integer  "course_id"
    t.integer  "guide_id"
    t.string   "ayah_nama"
    t.string   "ayah_pekerjaan"
    t.string   "ayah_golongan"
    t.string   "ibu_nama"
    t.string   "ibu_pekerjaan"
    t.string   "ibu_golongan"
    t.text     "alamat"
    t.string   "kota"
    t.string   "tahun_lulus"
    t.string   "lulusan"
    t.string   "no_ijazah"
    t.text     "alamat_sekolah"
    t.string   "nem"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "active_id",       :default => 1
    t.string   "password_digest"
  end

  add_index "students", ["active_id"], :name => "index_students_on_active_id"
  add_index "students", ["college_id"], :name => "index_students_on_college_id"
  add_index "students", ["course_id"], :name => "index_students_on_course_id"
  add_index "students", ["gender_id"], :name => "index_students_on_gender_id"
  add_index "students", ["guide_id"], :name => "index_students_on_guide_id"
  add_index "students", ["religion_id"], :name => "index_students_on_religion_id"

  create_table "subjects", :force => true do |t|
    t.integer  "course_id"
    t.string   "kode"
    t.string   "nama"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mk_group_id"
  end

  add_index "subjects", ["course_id"], :name => "index_subjects_on_course_id"
  add_index "subjects", ["mk_group_id"], :name => "index_subjects_on_mk_group_id"

  create_table "teachings", :force => true do |t|
    t.integer  "dosen_id"
    t.integer  "subject_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_id"
    t.string   "semester"
    t.integer  "sks"
  end

  add_index "teachings", ["course_id"], :name => "index_teachings_on_course_id"
  add_index "teachings", ["dosen_id"], :name => "index_teachings_on_dosen_id"
  add_index "teachings", ["group_id"], :name => "index_teachings_on_group_id"
  add_index "teachings", ["subject_id"], :name => "index_teachings_on_subject_id"

end
