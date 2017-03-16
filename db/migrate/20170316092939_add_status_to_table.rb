class AddStatusToTable < ActiveRecord::Migration[5.0]
  def change
    add_column :tables, :status, :boolean
  end
end
