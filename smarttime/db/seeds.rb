# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
   Stati.create("name" => 'verfuegbar', "description" => 'Der Wagen ist einsatzbereit')
   Stati.create("name" => 'im Einsatz', "description" => 'Der Wagen steht nicht zur Verfuegung')
   Stati.create("name" => 'in Werkstatt', "description" => 'Der Wagen muss repariert werden')
   Stati.create("name" => 'eingetroffen', "description" => 'Der Wagen muss noch gesaeubert und betankt werden')

