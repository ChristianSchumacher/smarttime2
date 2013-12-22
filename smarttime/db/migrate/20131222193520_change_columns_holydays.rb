class ChangeColumnsHolydays < ActiveRecord::Migration
  def change
    add_column :holydays, :month, :integer
    add_column :holydays, :day, :integer
    add_column :holydays, :year, :integer
    remove_column  :holydays, :date
  end
end
