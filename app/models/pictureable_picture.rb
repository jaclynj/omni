class PictureablePicture < ActiveRecord::Base

  belongs_to  :picture

  belongs_to  :picturable,
              polymorphic: :true

end
