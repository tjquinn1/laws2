class Cosponsor < ApplicationRecord
	belongs_to :bill, optional: true
	belongs_to :rep, optional: true
end
