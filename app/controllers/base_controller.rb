class BaseController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  protected

  def record_not_found
    render :file => "#{Rails.root}/public/404", :layout => true, :status => :not_found
  end

  def authorized
    # generic code
  end

  def load_resource
    # generic code
  end

end