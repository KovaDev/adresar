class LegalEntitiesController < BaseController

  before_filter :authenticate_user!
  before_action :admin_only, only: [:new, :edit, :destroy]
  before_action :find_legal_entity, only: [:show, :edit, :update, :destroy]

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
  end

  def edit
  end

  def update
    if @entity.update_attributes(legal_entity_params)
      redirect_to @entity
    else
      render 'edit'
    end
  end

  def destroy
    @entity.destroy
    redirect_to root_path
  end

  private

    def legal_entity_params
      params.require(:legal_entity).permit(:name, :owner, :address, :mobile,
                                           :phone, :web, :email, :postal_code,
                                           :country, :city, :fax, :latitude, :longitude)
    end

    def find_legal_entity
      @entity = LegalEntity.find(params[:id])
    end

end
