class AddPicturesToProfessionals < ActiveRecord::Migration
  def change
    add_column :professionals, :picture_id, :integer, references: :pictures
  end
end
