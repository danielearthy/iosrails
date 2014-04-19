class RemoveFloatFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :float
  end
end
