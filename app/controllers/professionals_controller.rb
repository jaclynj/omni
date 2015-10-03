class ProfessionalsController < ActionController::Base

  def index
    @professionals = Professional.all
  end

  def show
    @professional = Professional.find( params[:id] )
  end
end
