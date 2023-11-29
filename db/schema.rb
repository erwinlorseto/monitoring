# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_11_02_031325) do
  create_table "aplikasis", force: :cascade do |t|
    t.string "nama"
    t.string "alamat_web"
    t.string "nama_penanggung_jawab"
    t.string "deskripsi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status_data", force: :cascade do |t|
    t.string "kondisi_data"
    t.string "catatan"
    t.string "rekomendasi"
    t.string "validasi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verifikators", force: :cascade do |t|
    t.string "jenis_dokumen"
    t.string "menu_aplikasi"
    t.string "kondisi_data"
    t.string "catatan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rekomendasi"
    t.integer "aplikasi_id"
    t.index ["aplikasi_id"], name: "index_verifikators_on_aplikasi_id"
  end

end
