class AddLocationToUsers < ActiveRecord::Migration
  def change
    add_column :professionals, :user, :string
  end
end
