class Rep < ApplicationRecord

  validates :firstName, presence: true, length: {maximum: 40}
  validates :lastName, presence: true, length:  {maximum:  40}

end
