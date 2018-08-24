class AddIndexToIdeas < ActiveRecord::Migration[5.1]
  def change
    add_index :ideas, :user_id
  end
end
