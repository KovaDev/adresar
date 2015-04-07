class PhysicalEntity < ActiveRecord::Base

  def full_name
    first_name + ' ' + last_name
  end

  def country_and_city
    country + ', ' + city
  end

end
