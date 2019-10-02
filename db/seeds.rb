# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#紐付けたいのであれば、
#uma = Uma.create!(
#などとして、
#uma.create_umaline!(
#Umaline.create!( の部分を↑に代えてやってみてください

# 実行コマンド rails db:seed
# heroku run rake db:seed

require 'csv'

CSV.read("uma2015_2.csv").each do |row|
  
     Horse.create!(
    horse_id: row[0],
    horse_name: row[1],
    sex: row[2],
    birthday: row[3],
    all: row[4],
    win: row[5],
    second: row[6],
    third: row[7],
    other: row[8],
    money: row[9],
    gwin: row[11],
    ghistory: row[10],
    production: row[12],
    
    ml: row[13],
    ml2: row[14],
    ml3a: row[15],
    fml3a: row[18],
    fml2: row[21],
    ml3b: row[22],
    fml3b: row[25],
    fml_f: row[28],
    ml2_f: row[29],
    fml2_f: row[36],
    ml3a_f: row[30],
    fml3a_f: row[33],
    ml3b_f: row[37],
    fml3b_f: row[40]
    
  )
  
end

puts 'done'
