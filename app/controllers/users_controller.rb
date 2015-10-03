class UsersController < ActionController::Base

  def read
    @user = User.find( params[:id] )
  end

end
