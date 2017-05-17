class Rep < ApplicationRecord

  validates :firstName, presence: true, length: {maximum: 40}
  validates :lastName, presence: true, length:  {maximum:  40}

  has_many :sponsors, :dependent => :destroy
  has_many :bills, through: :sponsors

  has_many :cosponsors, :dependent => :destroy
  has_many :bills, through: :cosponsors

	accepts_nested_attributes_for :cosponsors, allow_destroy: true
	accepts_nested_attributes_for :sponsors, allow_destroy: true

  mount_uploader :image, ReptarUploader



end
