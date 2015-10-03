class Service < ActiveRecord::Base

  validates :name, presence: true
  
  belongs_to :professional
end
