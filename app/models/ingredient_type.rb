class IngredientType < ActiveRecord::Base
  has_many :ingredients
  def to_s;name;end
end
