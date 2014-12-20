class Status < ActiveRecord::Base
  has_many :giver
  validates :description, length: { maximum: 45 }, allow_blank: true
end
