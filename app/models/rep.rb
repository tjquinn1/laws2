class Rep < ApplicationRecord

  validates :firstName, presence: true, length: {maximum: 40}
  validates :lastName, presence: true, length:  {maximum:  40}

  has_many :sponsors
  has_many :bills, through: :sponsors

  has_many :cosponsors
  has_many :bills, through: :cosponsors

	accepts_nested_attributes_for :cosponsors
	accepts_nested_attributes_for :sponsors

def fullname
  "#{first_name} #{last_name}"
end

end
