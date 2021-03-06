class Professional < ActiveRecord::Base
  
  include Pictureable

  validates   :username,
              presence: true,
              uniqueness: true,  
              format: { with: /\A[a-zA-Z0-9][a-zA-Z0-9_]*\z/ }
  validates   :first_name,
              allow_blank: true,
              format: { with: /\A[a-zA-Z][a-zA-Z0-9\-\s']+\z/ }
  validates   :last_name,
              allow_blank: true,
              format: { with: /\A[a-zA-Z][a-zA-Z0-9\-\s']+\z/ }

  has_many :services
  belongs_to :picture

  def name
    "#{self.first_name} #{self.last_name}"
  end
end
