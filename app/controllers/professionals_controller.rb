class ProfessionalsController < ApplicationController

  def index
    @professionals = Professional.all
  end

  def show
    @professional = Professional.find( params[:id] )
  end
end
