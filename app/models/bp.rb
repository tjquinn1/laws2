class Bp < ApplicationRecord
	belongs_to :bill, optional: true
end
