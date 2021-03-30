class Character < ApplicationRecord
  has_one :name
  has_one :biography
  has_many :quotes
  has_one :img_url

  belongs_to :user
end
