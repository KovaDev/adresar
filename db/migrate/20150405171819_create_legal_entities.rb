class CreateLegalEntities < ActiveRecord::Migration
  def change
    create_table :legal_entities do |t|
      t.string :name
      t.string :owner
      t.string :country
      t.string :city
      t.string :phone
      t.string :email
      t.string :web
      t.string :fax
      t.string :mobile
      t.string :address

      t.timestamps null: false
    end
  end
end
