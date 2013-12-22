# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#ACHTUNG: Bei den Seed-Daten dürfen keine Umlaute (Ä,Ö,Ü,ä,ü,ö) enthalten sein.

   Stati.create("name" => 'verfuegbar', "description" => 'Der Wagen ist einsatzbereit')
   Stati.create("name" => 'im Einsatz', "description" => 'Der Wagen steht nicht zur Verfuegung')
   Stati.create("name" => 'in Werkstatt', "description" => 'Der Wagen muss repariert werden')
   Stati.create("name" => 'eingetroffen', "description" => 'Der Wagen muss noch gesaeubert und betankt werden')
  
   Hirecar.create("badge" =>"ohne", "stati_id" => 1,"comment" => "Dieser Eintrag wird gewaehlt wenn der Kunde keinen Leihwagen bekommt")
   
   History.create("action"=>"init", "description" =>"Seed-Daten (Test-Daten) eingespielt")
   
   Holyday.create("date"=>"01.01","name"=>"Neujahrstag" )
