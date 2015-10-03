class UsersController < ApplicationController
  before_action :set_s3_direct_post, only: [ :edit, :update ]
  before_action :get_user, only: [ :show, :edit, :update ]


  def show

  end

  def edit

  end

  def update
    user_attributes = {}
    picture_attributes = user_params.delete( :picture_url )
    if picture_attributes.present?

      #TODO get more info for picture
      picture = Picture.create(
        storage_key: picture_attributes
      ) 

      user_attributes[:picture_id] = picture.id
    end
    @user.update( user_attributes )
    redirect_to @user
  end

  private
  def set_s3_direct_post
    @s3_direct_post = S3_BUCKET.presigned_post(
      key: "#{SecureRandom.uuid}-${filename}",
      success_action_status: '201', acl: 'public-read'
    )
  end
  def get_user
    @user = User.find( params[:id] )
  end

  def user_params
    params.require( :user ).permit( :picture_url )
  end

end
