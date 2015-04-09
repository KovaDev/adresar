class LegalEntity < ActiveRecord::Base

  belongs_to :category

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

end
