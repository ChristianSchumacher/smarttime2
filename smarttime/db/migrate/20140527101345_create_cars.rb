class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :sign
      t.string :model
      t.date :last_case
      t.date :buy_date
      t.date :next_maintenance
      t.text :comments
      t.boolean :happy

      t.timestamps
    end
  end
end
