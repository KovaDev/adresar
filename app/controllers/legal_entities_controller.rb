class LegalEntitiesController < ApplicationController

  #geocoded_by :address
  #after_validation :geocode

  before_action :admin_only, only: [:new, :edit, :destroy]

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
    @entity = LegalEntity.find(params[:id])
    if @entity.update_attributes(legal_entity_params)
      redirect_to @entity
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

    def legal_entity_params
      params.require(:legal_entity).permit(:name, :owner, :address, :mobile,
                                           :phone, :web, :email, :postal_code,
                                           :country, :city, :fax, :latitude, :longitude)
    end

end
