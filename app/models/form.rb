class Form < ActiveRecord::Base
  has_many :ornament
  validates :description, presence: true
  validates :description, length: { maximum: 100 }
end
