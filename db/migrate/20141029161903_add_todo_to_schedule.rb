class AddTodoToSchedule < ActiveRecord::Migration
  def change
    add_reference :schedules, :todo, index: true
  end
end
