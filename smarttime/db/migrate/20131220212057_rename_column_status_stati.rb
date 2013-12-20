class RenameColumnStatusStati < ActiveRecord::Migration
  def change
    rename_column :hirecars, :status_id, :stati_id
  end
end
