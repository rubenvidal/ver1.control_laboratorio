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

ActiveRecord::Schema.define(:version => 20110523151221) do

  create_table "hornos", :force => true do |t|
    t.string   "codigo"
    t.integer  "longitud"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mediciones", :force => true do |t|
    t.integer  "quemador_id"
    t.integer  "temperatura"
    t.integer  "presion"
    t.datetime "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quemadores", :force => true do |t|
    t.string   "nombre"
    t.integer  "cantidad_mecheros"
    t.string   "posicion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "horno_id"
  end

end
