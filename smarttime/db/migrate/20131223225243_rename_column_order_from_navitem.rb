class RenameColumnOrderFromNavitem < ActiveRecord::Migration
  def change
    rename_column :navitems, :order, :rang
  end
end
