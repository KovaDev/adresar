class LegalEntitiesController < ApplicationController

  #geocoded_by :address
  #after_validation :geocode

  #before_action current_user.is_admin?

  def new
    @entity = LegalEntity.new
  end

  def create
    @entity = LegalEntity.new(legal_entity_params)
    if @entity.save
      redirect_to @entity
    else
      render 'new'
    end
  end

  def show
    @entity = LegalEntity.find(params[:id])
  end

  def edit
    @entity = LegalEntity.find(params[:id])
  end

  def update

  end

  private

    def legal_entity_params
      params.require(:legal_entity).permit(:name, :owner, :address, :mobile,
                                           :phone, :web, :email, :postal_code,
                                           :country, :city, :fax, :latitude, :longitude)
    end

end
