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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150219162722) do

  create_table "arquivos", force: :cascade do |t|
    t.integer  "score"
    t.boolean  "cancelado"
    t.string   "observacao"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "documento_id"
    t.string   "upload_file_name"
    t.string   "upload_content_type"
    t.integer  "upload_file_size"
    t.datetime "upload_updated_at"
  end

  add_index "arquivos", ["documento_id"], name: "index_arquivos_on_documento_id"

  create_table "documentos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "score"
    t.integer  "meioambiente_id"
  end

  add_index "documentos", ["meioambiente_id"], name: "index_documentos_on_meioambiente_id"

  create_table "meioambiente", force: :cascade do |t|
    t.string   "nome"
    t.text     "desc"
    t.datetime "prazo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.boolean  "graficos"
    t.boolean  "meioambiente"
    t.boolean  "assuntosindigenas"
    t.boolean  "saude"
    t.boolean  "educacao"
    t.boolean  "vigilanciasanitaria"
    t.boolean  "agricultura"
    t.string   "nome"
    t.string   "sobrenome"
    t.boolean  "avaliacao"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
