class CreateActionableActions < ActiveRecord::Migration
  def change
    create_table :actionable_actions do |t|
      t.timestamps
      t.string   "type"
      t.integer  "actionable_id"
      t.integer  "user_id"
      t.integer  "actionable_type"
    end
  end
end
