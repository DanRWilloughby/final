class User < ActiveRecord::Base
  has_many :shopping_lists
  has_secure_password
  
  validates :email, presence: true
  validates :password, presence: true
  validates :name, presence: true
  validates :username, presence: true

end
end
