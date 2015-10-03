class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.timestamps
      t.string   "type"
      t.integer  "action_id"
      t.integer  "actionable_id"
      t.string   "actionable_type"
    end
  end
end
