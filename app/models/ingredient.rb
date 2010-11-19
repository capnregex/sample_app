class Ingredient < ActiveRecord::Base
  belongs_to :ingredient_type
  def to_s;name;end
end
