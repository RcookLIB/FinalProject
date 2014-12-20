class Giver < ActiveRecord::Base
  belongs_to :status
  has_many :ornament
  validates :lastname, length: { maximum: 45 }, allow_blank: true
  validates :firstname, length: { maximum: 45 }, alllow_blank: true
end
