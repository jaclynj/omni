module Pictureable
  
  extend ActiveSupport::Concern

  included do

    has_many :pictureable_pictures,         as: :pictureable,
                                            dependent: :destroy

    has_many :pictures,                     through: :pictureable_pictures

  end

end