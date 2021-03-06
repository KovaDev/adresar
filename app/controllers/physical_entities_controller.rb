class PhysicalEntitiesController < BaseController

  before_filter :authenticate_user!
  before_action :admin_only, only: [:new, :edit, :destroy]
  before_action :find_physical_entity, only: [:show, :edit, :update, :destroy]

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
  end

  def edit
    @entity.destroy
    redirect_to root_path
  end

  def update
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

  def find_physical_entity
    @entity = PhysicalEntity.find(params[:id])
  end

end
