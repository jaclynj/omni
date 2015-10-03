class AssociateServicesWithProfessional < ActiveRecord::Migration
  def change
    add_column :services, :professional_id, :integer, references: :professionals
  end
end
