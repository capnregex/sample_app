class PagesController < ApplicationController
  def home
    @ingredient_types = IngredientType.all :order => 'id'
  end

  def contact
  end

  def about
  end

  def help
  end

end
