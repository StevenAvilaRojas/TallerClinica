# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_10_201705) do

  create_table "cita", force: :cascade do |t|
    t.integer "consultorio_id", null: false
    t.integer "medico_id", null: false
    t.integer "paciente_id", null: false
    t.date "fecha"
    t.time "hora_inicio"
    t.time "hora_fin"
    t.string "motivo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consultorio_id"], name: "index_cita_on_consultorio_id"
    t.index ["medico_id"], name: "index_cita_on_medico_id"
    t.index ["paciente_id"], name: "index_cita_on_paciente_id"
  end

  create_table "consultorios", force: :cascade do |t|
    t.string "nombre"
    t.integer "codigo"
    t.string "ubicacion"
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medicos", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.integer "num_id"
    t.integer "num_cel"
    t.string "tipo_medico"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.date "fecha"
    t.integer "documento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cita", "consultorios"
  add_foreign_key "cita", "medicos"
  add_foreign_key "cita", "pacientes"
end
