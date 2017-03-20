class Request < ApplicationRecord
  belongs_to :user
  belongs_to :table
  has_many :orders, dependent: :destroy 
  has_many :products, through: :orders


def self.search(search)
  where("name LIKE ?", "%#{search}%") 
end

end
