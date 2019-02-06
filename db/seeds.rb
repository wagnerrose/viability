# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando os ERB."
station = [[ 'RFB_IRF-ASSIS_BRASIL-AC', 'ACABL0SP598', '', '', 8, 1, -10.9327777800000, -69.5650000000000, 12, '2017-10-17 15:44:53', '2017-11-17 14:45:58', 2691],
[ 'ACL3000011 - ASSIS BRASIL', 'ACABL0TC001', '', '', 6, 1, -10.9402777800000, -69.5666666700000, 12, '2017-10-17 15:44:53', '2017-11-17 14:56:26', 2691]]

  station.each do |nome, codigo, endereco, cedente, status_estacao, tipo, latitude, longitude,
    estado, criado, alterado, municipio|
    Station.create!( name: nome,
      code: codigo,
      address: endereco,
      assignor: cedente,
      status: status_estacao,
      type: tipo,
      latitude: latitude,
      longitude: longitude,
      state_id: estado,
      created_at: criado,
      update_at: alterado,
      county_id: municipio,)

    puts "Cadastrando Estacao: #{codigo} - nome: #{nome}"
  end

  puts "Estações Cadastradas...."


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