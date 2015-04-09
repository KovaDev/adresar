class PhysicalEntitiesController < ApplicationController

  before_action :admin_only, only: [:new, :edit, :destroy]

  def new
    @entity = PhysicalEntity.new
  end

  def create
    @entity = PhysicalEntity.new(physical_entity_params)
    if @entity.save
      redirect_to @entity
    else
      render 'new'
    end
  end

  def show
    @entity = PhysicalEntity.find(params[:id])
  end

  def edit
    @entity = PhysicalEntity.find(params[:id])
  end

  def update
    @entity = PhysicalEntity.find(params[:id])
    if @entity.update_attributes(physical_entity_params)
      redirect_to @entity
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def physical_entity_params
    params.require(:physical_entity).permit(:first_name, :last_name, :address, :mobile,
                                         :phone, :web, :email, :postal_code,
                                         :country, :city, :latitude, :longitude)
  end

end
