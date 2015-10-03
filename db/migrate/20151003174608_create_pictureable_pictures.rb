class CreatePictureablePictures < ActiveRecord::Migration
  def change
    create_table :pictureable_pictures do |t|
      t.timestamps
      t.integer  "picture_id"
      t.integer  "picturable_id"
      t.string   "picturable_type"
    end
  end
end
