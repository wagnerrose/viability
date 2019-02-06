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

ActiveRecord::Schema.define(version: 2019_01_30_123408) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "street"
    t.string "zipcode"
    t.bigint "company_id"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "county_id"
    t.index ["company_id"], name: "index_addresses_on_company_id"
    t.index ["county_id"], name: "index_addresses_on_county_id"
    t.index ["state_id"], name: "index_addresses_on_state_id"
  end

  create_table "analysts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "role"
    t.bigint "regional_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["regional_id"], name: "index_analysts_on_regional_id"
  end

  create_table "circuit_descriptions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "access_station"
    t.string "client_station"
    t.string "access_switch"
    t.string "client_switch"
    t.string "delivery_point"
    t.string "access_type"
    t.string "access_provider"
    t.string "provider_info"
    t.string "address"
    t.string "dgo"
    t.string "approach"
    t.string "fiber_number"
    t.string "fiber_assignor"
    t.string "ring"
    t.integer "point"
    t.float "latitude"
    t.float "longitude"
    t.bigint "circuit_id"
    t.bigint "station_id"
    t.bigint "county_id"
    t.bigint "state_id"
    t.bigint "equipment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["circuit_id"], name: "index_circuit_descriptions_on_circuit_id"
    t.index ["county_id"], name: "index_circuit_descriptions_on_county_id"
    t.index ["equipment_id"], name: "index_circuit_descriptions_on_equipment_id"
    t.index ["state_id"], name: "index_circuit_descriptions_on_state_id"
    t.index ["station_id"], name: "index_circuit_descriptions_on_station_id"
  end

  create_table "circuits", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "number"
    t.string "description"
    t.string "contract"
    t.integer "status"
    t.integer "routing"
    t.integer "asn"
    t.integer "bandwidth"
    t.integer "bandwidth_activated"
    t.integer "sap"
    t.date "activation_date"
    t.bigint "company_id"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_circuits_on_company_id"
    t.index ["service_id"], name: "index_circuits_on_service_id"
  end

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "fantasy_name"
    t.string "cnpj"
    t.string "sap"
    t.bigint "regional_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["regional_id"], name: "index_companies_on_regional_id"
  end

  create_table "connections", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "cluster_name"
    t.integer "arc_number"
    t.bigint "equipment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipment_id"], name: "index_connections_on_equipment_id"
  end

  create_table "contacts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "description"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_contacts_on_company_id"
  end

  create_table "counties", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_counties_on_state_id"
  end

  create_table "equipment", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "ip_address"
    t.string "firmware"
    t.text "description"
    t.integer "type"
    t.integer "status"
    t.bigint "station_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["station_id"], name: "index_equipment_on_station_id"
  end

  create_table "equipment_connections", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "local_interface"
    t.string "remote_equipment"
    t.string "remote_interface"
    t.integer "vlan"
    t.integer "direction"
    t.integer "speed"
    t.bigint "connection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["connection_id"], name: "index_equipment_connections_on_connection_id"
  end

  create_table "regionals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "state"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "address"
    t.string "assignor"
    t.integer "status"
    t.integer "type"
    t.float "latitude"
    t.float "longitude"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "county_id"
    t.index ["county_id"], name: "index_stations_on_county_id"
    t.index ["state_id"], name: "index_stations_on_state_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "companies"
  add_foreign_key "addresses", "counties"
  add_foreign_key "addresses", "states"
  add_foreign_key "analysts", "regionals"
  add_foreign_key "circuit_descriptions", "circuits"
  add_foreign_key "circuit_descriptions", "counties"
  add_foreign_key "circuit_descriptions", "equipment"
  add_foreign_key "circuit_descriptions", "states"
  add_foreign_key "circuit_descriptions", "stations"
  add_foreign_key "circuits", "companies"
  add_foreign_key "circuits", "services"
  add_foreign_key "companies", "regionals"
  add_foreign_key "connections", "equipment"
  add_foreign_key "contacts", "companies"
  add_foreign_key "counties", "states"
  add_foreign_key "equipment", "stations"
  add_foreign_key "equipment_connections", "connections"
  add_foreign_key "stations", "counties"
  add_foreign_key "stations", "states"
end
