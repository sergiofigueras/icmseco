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

ActiveRecord::Schema.define(version: 20150224204418) do

  create_table "acoes", force: :cascade do |t|
    t.string   "nome"
    t.string   "desc"
    t.datetime "prazo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "tipo"
  end

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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "acao_id"
  end

  add_index "documentos", ["acao_id"], name: "index_documentos_on_acao_id"

  create_table "notificacoes", force: :cascade do |t|
    t.text     "texto"
    t.boolean  "ack"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "arquivo_id"
  end

  add_index "notificacoes", ["arquivo_id"], name: "index_notificacoes_on_arquivo_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                       default: "", null: false
    t.string   "encrypted_password",          default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",               default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.boolean  "graficos"
    t.string   "nome"
    t.string   "sobrenome"
    t.boolean  "avaliacao"
    t.boolean  "destinacao_residuos_solidos"
    t.boolean  "saneamento_basico"
    t.boolean  "unidades_conservacao"
    t.boolean  "pmma"
    t.boolean  "ccq"
    t.boolean  "agua"
    t.boolean  "agricultura"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
