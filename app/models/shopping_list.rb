class ShoppingList < ActiveRecord::Base
  has_many :ingredients
end
