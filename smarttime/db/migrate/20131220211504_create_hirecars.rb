class CreateHirecars < ActiveRecord::Migration
  def change
    create_table :hirecars do |t|
      t.string :badge
      t.datetime :regestration_date
      t.string :fuel
      t.string :brand
      t.string :model
      t.text :comment
      t.text :defect
      t.boolean :smoking
      t.integer :status_id
      t.datetime :tech_check

      t.timestamps
    end
  end
end
