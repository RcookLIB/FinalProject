class Ornament < ActiveRecord::Base
  belongs_to :giver
  belongs_to :story
  belongs_to :form
  has_many :color, :through => :ornament_has_color
  validates :giver, presence: true
  validates :story, presence: true
  validates :form, presence: true
end
