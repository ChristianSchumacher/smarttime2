class CreateHolydays < ActiveRecord::Migration
  def change
    create_table :holydays do |t|
      t.date :date
      t.string :name
      t.string :country

      t.timestamps
    end
  end
end
