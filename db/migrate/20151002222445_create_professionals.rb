class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.timestamps
      t.string      :username
      t.string      :first_name
      t.string      :last_name
      t.string      :company_name
      t.string      :category
      t.text        :description, limit: nil
    end
  end
end
