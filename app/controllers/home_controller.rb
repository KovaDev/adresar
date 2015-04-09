class HomeController < ApplicationController

  def index
    @entities = LegalEntity.all
  end

end
