class AddUserIdToTasks < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM tasks;'
    add_reference :tasks, :user, index: true, null: false
  end

  def dowm
    remove_reference :tasks, :user, index: true
  end
end
