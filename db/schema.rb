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

ActiveRecord::Schema.define(version: 20191110234558) do

  create_table "clientes", force: :cascade do |t|
    t.string "cpf"
    t.string "nome"
    t.string "telefone"
    t.string "rua"
    t.string "numero"
    t.string "bairro"
    t.string "cidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "produtos_id"
    t.integer "quantidade"
    t.float "valorTotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produtos_id"], name: "index_pedidos_on_produtos_id"
    t.index ["usuario_id"], name: "index_pedidos_on_usuario_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.integer "codigo"
    t.string "nome"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "login"
    t.string "senha"
    t.string "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
