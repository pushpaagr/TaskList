class TaskMarkedCompletionDate < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :task_marked_completion_date, :date
  end
end
