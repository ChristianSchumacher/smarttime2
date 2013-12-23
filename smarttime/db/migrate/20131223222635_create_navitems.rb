class CreateNavitems < ActiveRecord::Migration
  def change
    create_table :navitems do |t|
      t.string :name
      t.string :url
      t.integer :order

      t.timestamps
    end
  end
end
