class AddCategoryReferenceToLegalEntity < ActiveRecord::Migration
  def change
    add_reference :legal_entities, :category, index: true, foreign_key: true
  end
end
