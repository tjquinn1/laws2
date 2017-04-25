class Bill < ApplicationRecord
	has_many :sponsors
	has_many :reps, through: :sponsors

	has_many :cosponsors
	has_many :reps, through: :cosponsors

	accepts_nested_attributes_for :cosponsors, allow_destroy: true
	accepts_nested_attributes_for :sponsors, allow_destroy: true
end
