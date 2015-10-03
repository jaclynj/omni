class AddPicturesToServices < ActiveRecord::Migration
  def change
    add_column :services, :picture_id, :integer, references: :pictures
  end
end
