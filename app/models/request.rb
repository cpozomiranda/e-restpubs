class Request < ApplicationRecord
  belongs_to :user
  belongs_to :table
  has_many :orders, dependent: :destroy 
  has_many :products, through: :orders
end
