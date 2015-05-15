class HomeController < BaseController

  before_filter :authenticate_user!

  def index

    # implementirati pretragu po tipu (pravno ili fizicko lice) i filtriranje po abecedi
    # implementirati pagination

    @entities = LegalEntity.all
    @entities = @entities.search(params[:term], params[:criteria]).sort(params[:order])
  end

end
