class ActionsController < ApplicationController

  def toggle_save
    result = "saved"
    if action = Action.find_by( action_params.merge( user_id: @current_user.id ) )
      action.destroy
      result = "save"
    else
      action = Action.create( action_params.merge( user_id: @current_user.id ) )
    end
    render json: "#{result}", status: 200
  end

  def action_params
    params.permit( :type, :actionable_id, :actionable_type )
  end

end
