class CreateStatis < ActiveRecord::Migration
  def change
    create_table :statis do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
