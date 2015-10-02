class ProfessionalsController < ActionController::Base

  def index
    @professionals = Professional.all
  end

  def read
    @professional = Professional.find( params[:id] )
  end
end
