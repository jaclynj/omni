class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.timestamps
      t.string      :username
      t.string      :first_name
      t.string      :last_name
      t.integer     :points
      t.text        :description, limit: nil
    end
  end
end
