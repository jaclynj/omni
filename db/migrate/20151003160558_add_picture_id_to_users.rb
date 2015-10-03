class AddPictureIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :picture_id, :integer, references: :pictures
  end
end
