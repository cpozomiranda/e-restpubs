class Product < ApplicationRecord
  belongs_to :category
  has_many :orders
  has_many :request, through: :orders
end
