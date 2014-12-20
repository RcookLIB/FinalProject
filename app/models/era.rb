class Era < ActiveRecord::Base
  has_many :story
  validates :description, length: { maximum: 45 }, allow_blank: true
end
