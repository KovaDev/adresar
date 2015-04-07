class CreatePhysicalEntities < ActiveRecord::Migration
  def change
    create_table :physical_entities do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :country
      t.string :address
      t.string :postal_code
      t.string :phone
      t.string :mobile
      t.string :email
      t.string :web
      t.float :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
