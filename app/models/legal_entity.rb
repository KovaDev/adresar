class LegalEntity < ActiveRecord::Base

  belongs_to :category

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  scope :default, -> { order(created_at: :desc) }

  scope :search, -> (term, criteria) do
    case criteria
      when 'name'
        where("name like ?", "%#{term}%") unless term.blank?
      when 'city'
        where("city like ?", "%#{term}%") unless term.blank?
      when 'country'
        where("country like ?", "%#{term}%") unless term.blank?
    end
  end

  scope :sort, -> (order) do
    case order
      when 'asc'
        reorder(:name => :asc) unless order.blank?
      when 'desc'
        reorder(:name => :desc) unless order.blank?
    end
  end

end
