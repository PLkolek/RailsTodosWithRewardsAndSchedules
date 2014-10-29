class RemoveTodoFromReward < ActiveRecord::Migration
  def change
    remove_reference :rewards, :todo, index: true
  end
end
