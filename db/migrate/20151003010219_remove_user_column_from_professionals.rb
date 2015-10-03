class RemoveUserColumnFromProfessionals < ActiveRecord::Migration
  def change
    remove_column :professionals, :user, :string
    add_column :users, :location, :string
  end
end
