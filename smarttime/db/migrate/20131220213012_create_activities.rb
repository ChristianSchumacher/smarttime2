class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.date :appointment_date
      t.time :start_time
      t.time :end_time
      t.integer :allocated_at
      t.integer :work_id
      t.time :activity_time
      t.integer :customer_id
      t.integer :hire_car_id
      t.boolean :direct_contact
      t.boolean :customer_service_agreement
      t.boolean :data_privacy_statement

      t.timestamps
    end
  end
end
