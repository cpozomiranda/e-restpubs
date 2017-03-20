class Product < ApplicationRecord
  belongs_to :category
  has_many :orders
  has_many :request, through: :orders


def self.search(search)
  where("name LIKE ?", "%#{search}%") 
end

end