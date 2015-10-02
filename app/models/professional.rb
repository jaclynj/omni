class Professional < ActiveRecord::Base

  validates   :first_name,
              allow_blank: true,
              format: { with: /\A[a-zA-Z][a-zA-Z0-9\-\s']+\z/ }
  validates   :last_name,
              allow_blank: true,
              format: { with: /\A[a-zA-Z][a-zA-Z0-9\-\s']+\z/ }

end
