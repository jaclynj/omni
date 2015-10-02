class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.timestamps
      t.string      :name
      t.string      :category
      t.float       :cost
      t.text        :description, limit: nil
    end
  end
end
