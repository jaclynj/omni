class Service < ActiveRecord::Base
  
  include Pictureable
  
  validates :name, presence: true
  
  belongs_to :professional
  belongs_to :picture
end
