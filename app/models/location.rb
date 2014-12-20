class Location < ActiveRecord::Base
  has_many :story
  validates :description, length: { maximum: 150 }, allow_blank: true
end
