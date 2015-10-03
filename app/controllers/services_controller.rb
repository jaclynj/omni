class ServicesController < ActionController::Base

  def index
    @services = Service.all
  end

  def show
    @service = Service.find( params[:id] )
  end
end
