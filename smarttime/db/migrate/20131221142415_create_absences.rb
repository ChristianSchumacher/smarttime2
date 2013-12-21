class CreateAbsences < ActiveRecord::Migration
  def change
    create_table :absences do |t|
      t.date :start_day
      t.date :end_day
      t.integer :user_id
      t.string :reason
      t.text :comment

      t.timestamps
    end
  end
end
