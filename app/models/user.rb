class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_save :set_role
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :requests

enum role: [:chef, :waiter, :admin, :guest]
private
def set_role
	self.role||=1
end

end
