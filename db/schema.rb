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

ActiveRecord::Schema.define(version: 20170315143753) do

  create_table "clientepacotes", force: :cascade do |t|
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "pacote_id"
    t.index ["client_id"], name: "index_clientepacotes_on_client_id"
    t.index ["pacote_id"], name: "index_clientepacotes_on_pacote_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "cpf"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "contatos", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "figure"
  end

  create_table "empresas", force: :cascade do |t|
    t.string   "name"
    t.string   "agent"
    t.string   "cnpj"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_empresas_on_user_id"
  end

  create_table "mensagems", force: :cascade do |t|
    t.text     "description"
    t.string   "name"
    t.string   "endereco"
    t.string   "telefone"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "email"
  end

  create_table "pacotes", force: :cascade do |t|
    t.integer  "tipo_pacote_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "description"
    t.integer  "empresa_id"
    t.index ["tipo_pacote_id"], name: "index_pacotes_on_tipo_pacote_id"
  end

  create_table "psicologapacotes", force: :cascade do |t|
    t.integer  "psicologa_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "pacote_id"
    t.index ["pacote_id"], name: "index_psicologapacotes_on_pacote_id"
    t.index ["psicologa_id"], name: "index_psicologapacotes_on_psicologa_id"
  end

  create_table "psicologas", force: :cascade do |t|
    t.string   "name"
    t.integer  "n_orgao"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_psicologas_on_user_id"
  end

  create_table "tipo_pacotes", force: :cascade do |t|
    t.string   "name"
    t.integer  "numeroEntrevistas"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.integer  "kind"
    t.string   "curriculum"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
