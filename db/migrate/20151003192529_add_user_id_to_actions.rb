class AddUserIdToActions < ActiveRecord::Migration
  def change
    add_column :actions, :user_id, :integer, references: :users
  end
end
