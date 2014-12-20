class OrnamentHasColor < ActiveRecord::Base
  belongs_to :color
  belongs_to :ornament
  validates :color, presence: true
  validates :ornament, presence: true
end
