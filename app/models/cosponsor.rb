class Cosponsor < ApplicationRecord
	belongs_to :bill
	belongs_to :rep
end
