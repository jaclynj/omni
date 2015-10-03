class Picture < ActiveRecord::Base

  validates   :storage_key,
              presence: true,
              uniqueness: true

end
