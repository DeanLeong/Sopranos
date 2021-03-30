class Character < ApplicationRecord
  belongs_to :user

  has_one :name
  has_one :biography
  has_many :quotes
  has_one :img_url
end
