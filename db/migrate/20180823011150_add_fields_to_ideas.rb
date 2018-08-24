class AddFieldsToIdeas < ActiveRecord::Migration[5.1]
  def change
    add_column :ideas, :user_id, :bigint
  end
end
