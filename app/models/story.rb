class Story < ActiveRecord::Base
  belongs_to :location
  belongs_to :era
  has_many :ornament
  validates :location, presence: true
  validates :era, presence: true
  validates :duration, length: { maximum: 5 }, alllow_blank: true
end
