class Action < ActiveRecord::Base

  belongs_to  :actionable,
              polymorphic: :true

  belongs_to  :user

  validates   :type, presence: true
  validates   :actionable_id, presence: true
  validates   :actionable_type, presence: true

  validates   :user_id,
              presence: true,
              :uniqueness => { scope: [:actionable_id, :actionable_type, :type] }

end
