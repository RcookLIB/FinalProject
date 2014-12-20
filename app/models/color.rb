class Color < ActiveRecord::Base
  has_many :ornaments, :through => :ornament_has_color
  validates :description, presence: true
  validates :description, length: { maximum: 45 }
end
