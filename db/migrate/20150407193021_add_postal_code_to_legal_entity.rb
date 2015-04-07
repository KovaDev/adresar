class AddPostalCodeToLegalEntity < ActiveRecord::Migration
  def change
    add_column :legal_entities, :postal_code, :string
  end
end
