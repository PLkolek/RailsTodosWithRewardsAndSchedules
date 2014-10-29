class AddTodoToReward < ActiveRecord::Migration
  def change
    add_reference :rewards, :todo, index: true
  end
end
