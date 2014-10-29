class CreateJoinTableTodoReward < ActiveRecord::Migration
  def change
    create_join_table :todos, :rewards do |t|
      # t.index [:todo_id, :reward_id]
      # t.index [:reward_id, :todo_id]
    end
  end
end
