class AddLatitudeAndLongitudeToLegalEntity < ActiveRecord::Migration
  def change
    add_column :legal_entities, :latitude, :float
    add_column :legal_entities, :longitude, :float
  end
end
