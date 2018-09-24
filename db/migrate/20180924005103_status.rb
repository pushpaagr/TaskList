class Status < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :status_completed, :boolean
  end
end
