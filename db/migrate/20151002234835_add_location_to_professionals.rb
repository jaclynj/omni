class AddLocationToProfessionals < ActiveRecord::Migration
  def change
    add_column :professionals, :location, :string
  end
end
