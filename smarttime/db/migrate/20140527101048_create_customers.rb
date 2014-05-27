class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :street
      t.integer :zip
      t.string :city
      t.string :country
      t.text :comment
      t.string :car
      t.string :phone
      t.string :fax
      t.string :cellphone

      t.timestamps
    end
  end
end
