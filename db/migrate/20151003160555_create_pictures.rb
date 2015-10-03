class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
    t.timestamps
    t.string   "filename"
    t.integer  "size",         limit: 8
    t.string   "content_type"
    t.string   "storage_key"
    t.json     "metadata"
    end
  end
end
